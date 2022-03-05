import { initializeApp } from "https://www.gstatic.com/firebasejs/9.4.0/firebase-app.js";
import { getDatabase, set, ref, update } from "https://www.gstatic.com/firebasejs/9.4.0/firebase-database.js";
import { getAuth, createUserWithEmailAndPassword, signInWithEmailAndPassword, onAuthStateChanged, signOut } from "https://www.gstatic.com/firebasejs/9.4.0/firebase-auth.js";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyBhxypExke5uJQ7EWyXJWM1lj18uJefqP4",
  authDomain: "login-c8b1a.firebaseapp.com",
  projectId: "login-c8b1a",
  storageBucket: "login-c8b1a.appspot.com",
  messagingSenderId: "259109160113",
  appId: "1:259109160113:web:0208bdda580406a0434e90",
  measurementId: "G-VZPQNS74DR"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const database = getDatabase(app);
const auth = getAuth();