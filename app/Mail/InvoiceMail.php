<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class InvoiceMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     */

     // $order from Checkoutcontroller ======================>
    public $order;
    public function __construct($order)
    {
        $this->order = $order;
    }

    /**
     * Get the message envelope.
     */
    public function envelope(): Envelope
    {

    // Subject ta nejar moto dawa jabe===========================>

        return new Envelope(
            subject: 'Invoice From SRS Ecommerce',
        );
    }

    /**
     * Get the message content definition.
     */


// *********************************************************************************





     //for mail================================== ======================>
    public function content(): Content
    {
        return new Content(
            view: 'mail.invoice',
        );

    // Subject ta nejar moto dawa jabe
    // othoba etaw use kora jabe kintu amr tay ei code ta kaj kortac na ===========================================> opore ace
    // return $this->subject('Invoice From SRS Ecommerce')->view('mail.invoice');

    }






    /**
     * Get the attachments for the message.
     *
     * @return array<int, \Illuminate\Mail\Mailables\Attachment>
     */
    public function attachments(): array
    {
        return [];
    }
}
