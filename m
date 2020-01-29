Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC4814CE90
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 17:41:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:Date:References:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2wo7rrT5r5WcqRKdQeNVWten+2r951aRUX0ocZUXInU=; b=q9dJc7w+9t2S+3hu68cpG5a8t
	+K31GIofs10o7LJM4E1eMGfpPPJIWewXwc0LDnUf1FcbpDiCTMro+2iO/u6O0XRHYNSM9nxsokX7Y
	gp8hIogTkg0QI6w8k/I4nwzD2M545mSIqPfqiVdlYZhG6v+GnQSbEAjwVy9+IFwPVfRCC6L0/utWj
	16Ks3woB6sA7c+tl+hWuoDYXT2P4PwbwZKsmRiNuypl+d7QFH6sOhxJtYz75Ex50aohVoAFOlw1DC
	nTvmoF9+4GsObfXKGYNXndkhFhimW8mPPNr5z1tTelNYJCnUHpEdrH9M3OBoTaHLWxi6tTeRgSwJt
	vVgUfViWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwqOz-0007rO-UZ; Wed, 29 Jan 2020 16:41:17 +0000
To: Koen Vandeputte <koen.vandeputte@ncentric.com>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
References: <mailman.27217.1580134584.2486.openwrt-devel@lists.openwrt.org>
 <ed6f8dd3-fe44-62e1-f631-4842ff33d373@ncentric.com>
 <bbbdb47a-a1f1-9dd0-1a53-05ab93f218c2@guifi.net>
Date: Wed, 29 Jan 2020 17:40:43 +0100
In-Reply-To: <bbbdb47a-a1f1-9dd0-1a53-05ab93f218c2@guifi.net>
MIME-Version: 1.0
Message-ID: <mailman.27646.1580316070.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "Roger Pueyo Centelles | Guifi.net via openwrt-devel"
 <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] ath79: NAND bad eraseblocks in MikroTik
 RouterBOARD 922UAGS-5HPacD
Content-Type: multipart/mixed; boundary="===============0498932553288839458=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============0498932553288839458==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0498932553288839458==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from smtp1.guifi.net ([109.69.9.53])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwqOo-0007qd-G1
	for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 16:41:09 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.guifi.net (Postfix) with ESMTP id 4878PJ5mTVz3w2S;
	Wed, 29 Jan 2020 17:40:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=guifi.net; h=
	content-language:content-type:content-type:in-reply-to
	:mime-version:user-agent:date:date:message-id:references:from
	:from:subject:subject:received:received:received; s=dkim; t=
	1580316052; x=1582130453; bh=f7qoWOZdW6hQS0P3fVu1cycsqJ7DyRhvQYy
	f+wB/Nwk=; b=wBpYYD5Pg5GGk+zZxoZESXcNf3CAf6OgQ/8aYT4JVpmF2LgVPYU
	vtT6kAvUZxJdYH745KrCbZZCi1JSj3tEgMxS0MMGlGfkDDdF+IIitKZpcInqVjeV
	isFrO837dWCl1Zne2Irnvebp5I98ag8kIpcCyROSBCyxLhTsGm3sY9wpW6lW/PxT
	9oD+c6yMpYTIbj/lgLFM3dCQSSffKp8p9EEkaViVnxdGxN8BVog13tqZVZAe7ITA
	uV5IE1Dx7xcc/jsHEedJQsRcIAvviMgxgkw2QVWmExBeGEY4DF5h8nMQ7cCegu8a
	SIlxDEVolCrUHDacgEH4jNabgum+/OOEfpA==
X-Amavis-Modified: Mail body modified (using disclaimer) - smtp1.guifi.net
X-Virus-Scanned: Scrollout F1 at guifi.net
Received: from smtp1.guifi.net ([127.0.0.1])
	by localhost (smtp1.guifi.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id ao_wCoyJADeT; Wed, 29 Jan 2020 17:40:52 +0100 (CET)
Received: from mail.guifi.net (mail.guifi.net [109.69.9.9])
	by smtp1.guifi.net (Postfix) with ESMTP id 4878P83JCXz3vtX;
	Wed, 29 Jan 2020 17:40:44 +0100 (CET)
Received: from [147.83.42.157] (dync-42-157.ac.upc.es [147.83.42.157])
	by mail.guifi.net (Postfix) with ESMTPSA id 0837A6AF4B2;
	Wed, 29 Jan 2020 17:40:43 +0100 (CET)
Subject: Re: [OpenWrt-Devel] ath79: NAND bad eraseblocks in MikroTik
 RouterBOARD 922UAGS-5HPacD
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
To: Koen Vandeputte <koen.vandeputte@ncentric.com>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
References: <mailman.27217.1580134584.2486.openwrt-devel@lists.openwrt.org>
 <ed6f8dd3-fe44-62e1-f631-4842ff33d373@ncentric.com>
 <bbbdb47a-a1f1-9dd0-1a53-05ab93f218c2@guifi.net>
Autocrypt: addr=roger.pueyo@guifi.net; prefer-encrypt=mutual; keydata=
 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
Message-ID: <3e663160-1d4b-d069-21c5-c0a42554a198@guifi.net>
Date: Wed, 29 Jan 2020 17:40:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <bbbdb47a-a1f1-9dd0-1a53-05ab93f218c2@guifi.net>
Content-Type: multipart/mixed;
 boundary="------------2DFDB98E934272D273174FFC"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_084106_976826_D7E412FD 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [109.69.9.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

This is a multi-part message in MIME format.
--------------2DFDB98E934272D273174FFC
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi all,

It seems like the NAND flash is read with different endiannesses:

root@ar71xx# hexdump /dev/mtd4 | head -n 2

0000000 3530 3935 f451 53ce 0000 64a6 2e36 3234
0000010 312e 0032 0000 0000 0000 0000 0000 0000

root@ath79# hexdump /dev/mtd4 | head -n 2

0000000 3539 3035 ce53 51f4 a664 0000 3432 362e
0000010 3200 2e31 0000 0000 0000 0000 0000 0000

I wonder, though, which is the "correct" one --or how to change ath79's,
so that it is coherent with the previous target--.

Roger

El 27/1/20 a les 18:17, Roger Pueyo Centelles | Guifi.net ha escrit:
> Hi Koen,
>
> Please find the bootlogs at:
>
> https://pastebin.com/PD5Lfx3p (ath79)
>
> https://pastebin.com/j1jBauQE (ar71xx)
>
> Cheers!
>
> El 27/1/20 a les 17:31, Koen Vandeputte ha escrit:
>> Hi Roger,
>>
>> Can you send me full bootlogs please from both?
>>
>> I have RB922-5HPnD, not the AC version over here, but I guess the
>> issue will also be present over there.
>>
>> Thanks again,
>>
>> Koen
>>
>> On 27.01.20 15:16, Roger Pueyo Centelles | Guifi.net via openwrt-devel
>> wrote:
>>> The sender domain has a DMARC Reject/Quarantine policy which disallows
>>> sending mailing list messages using the original "From" header.
>>>
>>> To mitigate this problem, the original message has been wrapped
>>> automatically by the mailing list software.
>>>
>>> _______________________________________________
>>> openwrt-devel mailing list
>>> openwrt-devel@lists.openwrt.org
>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--------------2DFDB98E934272D273174FFC
Content-Type: application/pgp-keys;
 name="0x5AF48A37E35766B1.asc"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0x5AF48A37E35766B1.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
71qL+Ay9f0bP+p/LwJMifwfZtfDPI0l5
=KUXS
-----END PGP PUBLIC KEY BLOCK-----

--------------2DFDB98E934272D273174FFC--


--===============0498932553288839458==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0498932553288839458==--

