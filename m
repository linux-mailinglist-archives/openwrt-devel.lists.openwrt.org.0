Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42827FB81C
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 19:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZYafwX12DsoXXBakHfcQ5G+Q91UANDGQQCG+/TNr3AY=; b=Canc7s7OFsmPSoih3SCPxks0C
	DYazeUez1XthC4B5cmbvMo5MoYTqkJa7nQpKP4q5PxabyYTmWfLPmm5YIBblNIVRxG9KlYR3mVxsG
	Q71lxOdUsy+2g5ZuxMBxyHNBWdBzzksH7p+OftEx1tIP5vtwiHVHBJ5Kdt4Kop39i8eZJWoWeDh03
	cusft9msIBAPHVAaKKvlzj4LYcjPoTTqHRFooPr47toIUIzhrVjSK1bCjvXAIwoM4t4b4Ec5yDiTh
	5w3fmqRK4BSt17uF9r3kPR9oq02ePeLfWd8IosX47mnIkbIIlG085n6JThIzW+kS1DIHkGiVs9wFc
	xhVbp32xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUxlc-0008K7-HX; Wed, 13 Nov 2019 18:53:24 +0000
Received: from smtp1.guifi.net ([109.69.9.53] helo=smtp1.elserrat.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUxlT-0008Ii-4g
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 18:53:17 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by smtp1.elserrat.org (Postfix) with ESMTP id 47CtzC1y97z3w8w;
 Wed, 13 Nov 2019 19:52:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=guifi.net; h=
 content-type:content-type:in-reply-to:mime-version:user-agent
 :date:date:message-id:from:from:references:subject:subject
 :received:received:received; s=dkim; t=1573671175; x=1575485576;
 bh=A9dR+YToQIaYy5JYy9rlk3lnUDET4o5HxBhB50v8QrU=; b=M0DDLscVb7lc
 OSCQkMGYEcP4UDAKwYcVvPX2mjUVNCwEj5/7n23GsHDTW5FjbClcworIJW9T2fNZ
 D1Mw1EtX+ErNwUuGE+LSPxJCGyNV2fiJcPUHQeWLYFsbhuDjpO2oGksj3zG0P5tL
 IJviQxCrStEPMltHvRhZu/m+TbxPuF/No0WmiFOVEGdif5OcMhccyjh6M0ecPcRZ
 wsXXXo1CoCrAm55LSX376L3HsFOV5ZIQ8SvmC3kGD7Wm1bYzWncHTHZILx/+SABh
 5Cu5xFBn2l5kPiRgC8gpsA7B+T8+F64qPQg25yk6c8bg6u0lz/rIv69Wp03X2AoD
 o0Ee6Mqgzg==
X-Amavis-Modified: Mail body modified (using disclaimer) - smtp1.elserrat.org
X-Virus-Scanned: Scrollout F1 at elserrat.org
Received: from smtp1.elserrat.org ([127.0.0.1])
 by localhost (smtp1.elserrat.org [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id zddQ0GSYJT_h; Wed, 13 Nov 2019 19:52:55 +0100 (CET)
Received: from mail.guifi.net (mail.guifi.net [109.69.9.9])
 by smtp1.elserrat.org (Postfix) with ESMTP id 47CtzB5RPYz3w8l;
 Wed, 13 Nov 2019 19:52:54 +0100 (CET)
Received: from [10.8.0.6] (gw-4-vpn-i.ac.upc.edu [147.83.35.81])
 by mail.guifi.net (Postfix) with ESMTPSA id 7778B6A7A4D;
 Wed, 13 Nov 2019 19:52:52 +0100 (CET)
To: openwrt-devel@lists.openwrt.org
References: <20191111154224.1476-1-admin@kryma.net>
 <023f01d598aa$596fa950$0c4efbf0$@adrianschmutzler.de>
 <b8afe62e-867f-2d60-2c0a-08d01ebd9fa4@guifi.net>
 <f726e378-ed01-bb64-0873-8c09e1dc9953@kryma.net>
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Openpgp: preference=signencrypt
Autocrypt: addr=roger.pueyo@guifi.net; keydata=
 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
Message-ID: <bd223657-fcec-df9f-5066-94bb90ef9316@guifi.net>
Date: Wed, 13 Nov 2019 12:52:50 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <f726e378-ed01-bb64-0873-8c09e1dc9953@kryma.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_105315_757161_16178975 
X-CRM114-Status: GOOD (  10.54  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for COMFAST CF-E130N
 v2
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
Cc: Kryma <admin@kryma.net>
Content-Type: multipart/mixed; boundary="===============5182969720631642948=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5182969720631642948==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="E2zc2jbJc62G9QtlynPzGlSYNab2OCqxj"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--E2zc2jbJc62G9QtlynPzGlSYNab2OCqxj
Content-Type: multipart/mixed; boundary="vVzOUBXzrmZY9xkzOpXLj1jiqi5e9Dixu";
 protected-headers="v1"
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
To: openwrt-devel@lists.openwrt.org
Cc: Kryma <admin@kryma.net>
Message-ID: <bd223657-fcec-df9f-5066-94bb90ef9316@guifi.net>
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for COMFAST CF-E130N
 v2
References: <20191111154224.1476-1-admin@kryma.net>
 <023f01d598aa$596fa950$0c4efbf0$@adrianschmutzler.de>
 <b8afe62e-867f-2d60-2c0a-08d01ebd9fa4@guifi.net>
 <f726e378-ed01-bb64-0873-8c09e1dc9953@kryma.net>
In-Reply-To: <f726e378-ed01-bb64-0873-8c09e1dc9953@kryma.net>

--vVzOUBXzrmZY9xkzOpXLj1jiqi5e9Dixu
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Well, rather than looking at the specifications, I'd check if the actual
hardware is 802.11bgn. :)

You could try the "iw list" command to see if the available channels
match the 802.11bgn band or not.

Cheers!

El 13/11/19 a les 11:33, Kryma ha escrit:
> Hi,
>
>> In addition to Adrian's comments, could it be that the device was a
>> 802.11bgn router?
>>
> Looking at the specifications, it seems to be one indeed. Should I
> make any changes regarding that?


--vVzOUBXzrmZY9xkzOpXLj1jiqi5e9Dixu--

--E2zc2jbJc62G9QtlynPzGlSYNab2OCqxj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEwCTDpYvv87wDBo8fWvSKN+NXZrEFAl3MUQMACgkQWvSKN+NX
ZrHw7w//YExjlRTS6MufSEUV1J3dwaUhHFffUSGOVzGiGQCVDlXiu40Fm7fJsfyY
y+LIxNTeIPxpXd8U6Krv07Y5YggcqRAo6Ivow71iRBljx0xHNPmh42dKRKvTUst8
bKq7ftabLp1NFwscooQ2duSITij1oNN0AaDEdgoRrYvsMU0IzlZoXRzJtYH6+8jD
kv+C2drzKMMNSJmx5jg5jsEF1uruffxwDgZoD7sh+nUfGEaE1CiiZglTrZNrWS5w
w7KVNerCfC/uKSM0VyVhDFOSAIjRSbpnZ+Y87Wsr2cMZXuNG31BXItugKh1GhRMY
WJf154x6PzbeoxruaeH3p872xYjpBL6/P4lQ0urxisRl3KZxR8p44LunudYI5vX/
t67xTDwqTSCCDjzv/+PN2PsNwlcVcx/lFUobEV+MkxwH+vQOOYFKVUiPW2+6RuRb
yA6fGIjVCcWnFka2aNuu50egFyfyWgoDCfMA4f/6M/rvNCJQgC7ZX5qhGWx5IyAr
cVEpnxKBnqT9uw3piZHAW77Gkvuu1fFDzDw7JBLPNIVeunQ7Onk9rJTIL6KrorAt
ybmfxtZ+zunjPHZRoVLTJTE7KhL/XaxTz9lbVUlQPv3PF1v9Z8ez8t/BkES48n0Z
/YlYhl2BwPrM7tsCjHxs3W0r3PBSGMQOX77aAJf5bQWPUocx/rw=
=H+RZ
-----END PGP SIGNATURE-----

--E2zc2jbJc62G9QtlynPzGlSYNab2OCqxj--


--===============5182969720631642948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5182969720631642948==--

