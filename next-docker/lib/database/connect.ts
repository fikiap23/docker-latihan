import mongoose from 'mongoose'

let isConnected = false

async function dbConnect() {
  if (isConnected) return

  try {
    await mongoose.connect(process.env.DB_URL as string)
    isConnected = true
    console.log('MongoDB connected')
  } catch (err) {
    console.log(err)
  }
}

export default dbConnect
