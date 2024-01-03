import 'package:disiapp/screens/styles/style.dart';
import 'package:flutter/material.dart';

Padding ziladropdown() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: DropdownButtonFormField(
        focusColor: Colors.white,
        hint: const Text(
          "জেলা",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        value: null,
        items: [
          DropdownMenuItem(
            value: "দিনাজপুর",
            child: TextButton(
                onPressed: () {}, child: Text("দিনাজপুর", style: dropdowntext)),
          ),
          DropdownMenuItem(
            value: "রংপুর",
            child: TextButton(
                onPressed: () {}, child: Text("রংপুর", style: dropdowntext)),
          ),
          DropdownMenuItem(
            value: "ররিশাল",
            child: TextButton(
                onPressed: () {}, child: Text("ররিশাল", style: dropdowntext)),
          ),
        ],
        onChanged: (vel) {}),
  );
}

Padding upodropdown() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: DropdownButtonFormField(
        focusColor: Colors.white,
        hint: const Text(
          "উপজেলা",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        value: null,
        items: [
          DropdownMenuItem(
            value: "দিনাজপুর",
            child: TextButton(
                onPressed: () {}, child: Text("দিনাজপুর", style: dropdowntext)),
          ),
          DropdownMenuItem(
            value: "রংপুর",
            child: TextButton(
                onPressed: () {}, child: Text("রংপুর", style: dropdowntext)),
          ),
          DropdownMenuItem(
            value: "ররিশাল",
            child: TextButton(
                onPressed: () {}, child: Text("ররিশাল", style: dropdowntext)),
          ),
        ],
        onChanged: (vel) {}),
  );
}

Padding uniondropdown() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: DropdownButtonFormField(
        focusColor: Colors.white,
        hint: const Text(
          "ইউনিয়ন",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        value: null,
        items: [
          DropdownMenuItem(
            value: "দিনাজপুর",
            child: TextButton(
                onPressed: () {}, child: Text("দিনাজপুর", style: dropdowntext)),
          ),
          DropdownMenuItem(
            value: "রংপুর",
            child: TextButton(
                onPressed: () {}, child: Text("রংপুর", style: dropdowntext)),
          ),
          DropdownMenuItem(
            value: "ররিশাল",
            child: TextButton(
                onPressed: () {}, child: Text("ররিশাল", style: dropdowntext)),
          ),
        ],
        onChanged: (vel) {}),
  );
}
