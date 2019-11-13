Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F5BFB82B
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 19:57:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0slW05Z1FMAvFIitSvX/Wksq9fo22cyFV7a8uaFnCso=; b=hLcwxIsSDnCpVNkuYo9erx+zR
	eSQ8YAfObzch+c8zxl5iuZn7BM5ioPBYVHYN4nck9BUKQieyiI12wKgWwbr5qwpU8qDNFrItjXG2L
	MlC2sD0JUTiQfv7cGo0eKVrXRZKgxObM0axc0u57ZNbZT38vv2X0UalR6vZzr9vQOFGXOb3fOsJM8
	K5HGyKYImK+4MpWl8GhagkkY39IcO99WQD70fG4c4VFyzjAeiDWxdOOD2wqXTd8OhxgGg3CZwFHFt
	DJPuAMlMu7SJixE3RaFzGaGO/9xOvxqaJw1415kno1XhYrkwHRFWBUEwBvYhC2k4AssqeH6IuNFsj
	8ywZuIoSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUxpO-0002nW-UD; Wed, 13 Nov 2019 18:57:19 +0000
Received: from smtp1.guifi.net ([109.69.9.53] helo=smtp1.elserrat.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUxpH-0002n7-Ay
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 18:57:12 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by smtp1.elserrat.org (Postfix) with ESMTP id 47Cv4563nGz3w8l;
 Wed, 13 Nov 2019 19:57:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=guifi.net; h=
 content-type:content-type:in-reply-to:mime-version:user-agent
 :date:date:message-id:from:from:references:subject:subject
 :received:received:received; s=dkim; t=1573671429; x=1575485830;
 bh=TJSLda6Mqq79Jq2b8D7mqwrioUVySeqXaIRqsW7sPEo=; b=XwOdpjf8kSpr
 q33XXth1AXfkQhkTdZ9lKikydp0hKumN9DmuMctmhY3ka000wZap4BGeADm6OM6T
 yDSYdYkIsiGiRmxpbaivbfmtN4eSKrf98RvXHRUFhaTFHCXf85QAgJ777TSLneov
 aNGiGzBHIPOEEvbTpxgZZuWBcP+zPQZTXS2cPQWPwmei937XQAgRZ1vMotHUgPp2
 69T97Rp6eAc/1iZczzaPXLsIoNuY/AZO7jy3xL3XkZtqX37/vIqMAyMEyU3DoeVO
 6zzuSCOEke8uhpwzS3/xEAUOoV1BkiI63IxbbDGlKhvxeh1A9en9j9QD7IXt+k7H
 bo/ruzBs5Q==
X-Amavis-Modified: Mail body modified (using disclaimer) - smtp1.elserrat.org
X-Virus-Scanned: Scrollout F1 at elserrat.org
Received: from smtp1.elserrat.org ([127.0.0.1])
 by localhost (smtp1.elserrat.org [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id XxmpJxZVvL35; Wed, 13 Nov 2019 19:57:09 +0100 (CET)
Received: from mail.guifi.net (mail.guifi.net [109.69.9.9])
 by smtp1.elserrat.org (Postfix) with ESMTP id 47Cv454p2dz3w3F;
 Wed, 13 Nov 2019 19:57:09 +0100 (CET)
Received: from [10.8.0.6] (gw-4-vpn-i.ac.upc.es [147.83.35.81])
 by mail.guifi.net (Postfix) with ESMTPSA id E1CAC6A7955;
 Wed, 13 Nov 2019 19:57:07 +0100 (CET)
To: openwrt-devel@lists.openwrt.org
References: <20191113182238.1921-1-admin@kryma.net>
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Openpgp: preference=signencrypt
Autocrypt: addr=roger.pueyo@guifi.net; keydata=
 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
Message-ID: <b1bff50e-44cf-a790-fd41-d66694e5b288@guifi.net>
Date: Wed, 13 Nov 2019 12:57:05 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191113182238.1921-1-admin@kryma.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_105711_667314_1EB74AE8 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.69.9.53 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add support for COMFAST
 CF-E130N v2
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
Cc: admin@kryma.net
Content-Type: multipart/mixed; boundary="===============5307562656244409109=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5307562656244409109==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="5nSpkWEFEfV4CjnGwsaIxKBwgTwcSIrbG"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--5nSpkWEFEfV4CjnGwsaIxKBwgTwcSIrbG
Content-Type: multipart/mixed; boundary="EMZgW3Qai8DRPkfM4UuA1Qv2oep8opL6I";
 protected-headers="v1"
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
To: openwrt-devel@lists.openwrt.org
Cc: admin@kryma.net
Message-ID: <b1bff50e-44cf-a790-fd41-d66694e5b288@guifi.net>
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add support for COMFAST
 CF-E130N v2
References: <20191113182238.1921-1-admin@kryma.net>
In-Reply-To: <20191113182238.1921-1-admin@kryma.net>

--EMZgW3Qai8DRPkfM4UuA1Qv2oep8opL6I
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi Pavel,

> Specifications:
>
>  - QCA9531 SoC
>  - 1x 10/100 Mbps Ethernet, both with PoE-in support

If it has one Ethernet, then there's only one PoE-in.

Cheers!



--EMZgW3Qai8DRPkfM4UuA1Qv2oep8opL6I--

--5nSpkWEFEfV4CjnGwsaIxKBwgTwcSIrbG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEwCTDpYvv87wDBo8fWvSKN+NXZrEFAl3MUgEACgkQWvSKN+NX
ZrEqNxAAlirJc4ssUb7Ve5BzMJWYBKrlzW7PKoY25u7d+ril6eeCwCXKf9Usk/3b
qBH9F6mayD6SxX3e4YJRhGwZ12jnCwBshs0S3KeEPaIyKZpBAqUd7+vzRSFHmv+D
DMzLzNkb9O53VCqzbgOLhXH0aYEwv/MTEAccHQ9WYYKezkGUzDcl7yCtCT2mGUyH
9JH4EWCTuYrOxq/LrLej1pRz0So4HefNymw6fFDxmcpUWB2BmAXvJTdSH7HDN7Xm
oUNu1OSz5MSn3NP+SO9LiEox4SV+aDsfhXVT4+UPtvjQlatvjWqaszsToCypI3YX
jq13itWD6nsymWsB27zKgF5X274TGgGTOvgJtfZfmSVO3rycplLHKl9O49Qvvdo6
CpGdZIWEkYXuh/fzrwlng1nTmM6fz0Rdg6LmPZBVLmXbJleZ8phvirMxQ5t111xa
RfjMSMO/rt7knhxT6CrXuV0aXNS4egfCo0/gYdPIBU5lTHv+idNfhPzpxn0oWqfM
wNnGk1ppKkxgLxB0T4fPAH35UdHWhX58ztIVzcfD1ccFjKRf5GgDtAlz5E3Be9ab
5Ur9sKDqWmsU2XORxDXIR2JYvwYr6jch+gm0V7l9a/gDMLTZMIfnzT2bgdS8asav
RH0krRE0D978sbmkVjnIZi+UXkPfNWF7M+bFd0F+PgiOGdhgfaE=
=BtAl
-----END PGP SIGNATURE-----

--5nSpkWEFEfV4CjnGwsaIxKBwgTwcSIrbG--


--===============5307562656244409109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5307562656244409109==--

