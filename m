Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A051F669A
	for <lists+openwrt-devel@lfdr.de>; Thu, 11 Jun 2020 13:28:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:Message-Id:References:In-Reply-To:To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lG1N/fDc703HLCDX1VK5KTfypgwukRkENRDZH8zQ8pE=; b=c/TdQHt2a1qLm0Y0XZjmt7tVx
	7pWuSR1fntkCzYEl0eRDFY/6K0kCougYKGavAHhRZTuDG3gUv8J/N3qYjAUwCzCf+vBIhxe2OdWbf
	j105CzS0jrih5KmNb8bOWeZyrteIn/ZcOC26r097yoReNsJwC7AZfz2jac25QAplL8pKOGmAESCL5
	uDhVewR0JwscijKXZ/Bl9X3Tl3oxO3I3wQ+zfD6e+Um7wPaQc5Xx0AjvwEGRxl3lnhMu0cjy8/ums
	NerkQwzZZyovVDX1nL34oNWTsyiNyU4R5c9P5DQNjEr2BEl2Aj5mu2j7IkeqlQWdwGdb39wX4z6r0
	g1vxsi0nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLNR-0003dY-Oy; Thu, 11 Jun 2020 11:28:09 +0000
Received: from palmtree.beeroclock.net ([178.79.160.154])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLNL-0003d4-Ib
 for openwrt-devel@lists.openwrt.org; Thu, 11 Jun 2020 11:28:05 +0000
Received: from mailpile.local (palmtree.beeroclock.net [178.79.160.154])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id E82DC1FBF9;
 Thu, 11 Jun 2020 11:27:59 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
In-Reply-To: <009f01d63fde$dc3b6d20$94b24760$@adrianschmutzler.de>
References: <009f01d63fde$dc3b6d20$94b24760$@adrianschmutzler.de>
User-Agent: Mailpile
Message-Id: <9GnQsIJEomI6AEMPVi9giB4tx2WcR4gFsykcvkZD23fc@mailpile>
Date: Thu, 11 Jun 2020 11:26:12 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_042803_744167_F9E1452F 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] Problems with e-mail DMARC policy,
 and other usability issues
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: "'R. Diez'" <rdiezmail-openwrt@yahoo.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============2725050546166021720=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2725050546166021720==
Content-Type: multipart/signed; boundary="==hq33qiizACgqfioTKAPxBwTrgbuXf8==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==hq33qiizACgqfioTKAPxBwTrgbuXf8==
Content-Type: multipart/mixed; boundary="==WQzAju4kisJvbVGYYSMb6NxYvZkIpF=="
Subject: Re: [OpenWrt-Devel] Problems with e-mail DMARC policy,
 and other usability issues
From: Karl Palsson <karlp@tweak.net.au>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Cc: "\'R. Diez\'" <rdiezmail-openwrt@yahoo.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
In-Reply-To: <009f01d63fde$dc3b6d20$94b24760$@adrianschmutzler.de>
References: <009f01d63fde$dc3b6d20$94b24760$@adrianschmutzler.de>
User-Agent: Mailpile
Date: Thu, 11 Jun 2020 11:26:12 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt

--==WQzAju4kisJvbVGYYSMb6NxYvZkIpF==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


<mail@adrianschmutzler.de> wrote:
> 
> However, the basic concept of a mailing list requires it to
> change the From header.

... does it though?  I know it does traditionally, but... is that really the only way?  IFF you keep this, then yeah, sure, all the other justifications are fine, but it's clearly not working well.

If the purpose of the mailling list is for human interaction,
then I'd argue it most certainly does _not_ need to be doing
this.

If the purpose of the mailing list is for automated processes to
handle patches from specially formatted mails, then..... is it
really the best tool? (hahahaaaa.... oh, I made myself sad)

Sincerely,
Karl Palsson
--==WQzAju4kisJvbVGYYSMb6NxYvZkIpF==--

--==hq33qiizACgqfioTKAPxBwTrgbuXf8==
Content-Type: application/pgp-signature; name="OpenPGP-digital-signature.html"
Content-Description: OpenPGP Digital Signature
Content-Disposition: attachment; filename="OpenPGP-digital-signature.html"

<html><body><h1>Digital Signature</h1><p>

This is a digital signature, which can be used to verify
the authenticity of this message. You can safely discard
or ignore this file if your e-mail software does not
support digital signatures.

</p><pre>
-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAl7iFPEACgkQGai1D9TV
yvZDpg/8CdMIxLkNvG30MGDwdQOy4UhCjBbQxxciC0ioTptU2G1xSowng37MxHBm
OX30kujC/h4jtRZ6P4rbI8eOQsM7RWkjjEZdv/izr9LyHTyBCOFBk0g1rGntRDgP
8OqGYFCLbhYSO+RQ2GWJ1SF++MckueNjmQRjpUah/BtpUDwXnQNvyoPlSbSbZ0Dt
t0C9d86ORQ+QFXWD3jdTLtBG3p2mSQL73hr/UE5thtBOBM22CvupcG18KB7ZVraD
eIG9odH2Vom/hzduzu9TYl+RvyclbkrxvQogYnWleyl4suJp2kZYGx1qLK3rsBHu
UKtExtzovFHxWSeNE+KdOy25sud04x7M3K0ogcZfvKZCdP9S+COz5WLjeTUQm0Qq
yx5JwWMefq3iSVlm5g/oXgHSuhZuKvaVq3pqzDk6FrZDlcKNyEyqJ6jAOfhMP696
J5GVyWCCNSZL8VWomqWIUIkhQTHAlOqT2z/MrsNjcPFlHjwz63LPT7cs/uv+Oz5Y
fJ2N/xmw4ZmUS7txrRqwDWnA5E4kifcn/tHBgSB0GIfzJmD2YLFxO1EBdRGUeIAI
BECmwF9Ig3WpSVHC3QXZm7PSuOdTvEVYXwTf2Ugdc3yiYyNUGZG1OlM69M3ntz8m
+JGp+IUAvilxODJTcU6IkH8BI5k3sJ6xMbtjX19SIw3bhr6OIrE=
=vc9r
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==hq33qiizACgqfioTKAPxBwTrgbuXf8==--



--===============2725050546166021720==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2725050546166021720==--


