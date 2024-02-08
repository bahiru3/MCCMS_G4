<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Lawyer;
// use Illuminate\Http\Request;

class LawyerController extends Controller
{
    public function index()
    {
        $lawyers = Lawyer::all();
        return view('lawyer.index', compact('lawyers'));
    }

    public function create()
    {
        return view('lawyer.create');
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'email' => 'required|unique:lawyers',
        ]);

        Lawyer::create($validatedData);
        return redirect('/lawyers')->with('success', 'Lawyer created successfully!');
    }

    public function edit(Lawyer $lawyer)
    {
        return view('lawyer.edit', compact('lawyer'));
    }

    public function update(Request $request, Lawyer $lawyer)
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'email' => 'required|unique:lawyers,email,' . $lawyer->id,
        ]);

        $lawyer->update($validatedData);
        return redirect('/lawyers')->with('success', 'Lawyer updated successfully!');
    }

    public function destroy(Lawyer $lawyer)
    {
        $lawyer->delete();
        return redirect('/lawyers')->with('success', 'Lawyer deleted successfully!');
    }
}

