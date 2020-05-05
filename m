Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 942591C5304
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 May 2020 12:20:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:Date:References:To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z90SZhI1klfOIKynx8JIcDcN17E+aZbnDzr4CNC1lGs=; b=iTfpXTG7Iw6TO3gnfbZ1sWqsY
	nYmezYYJOSCjssB7YTp2+rEatry9vIe6VLxaeB6V67lXgHYWMqNJhOPuf0VSIY/9DK0KlGjBYfjPt
	LdH/AcBI9FwxJeX2sH/zqZB2B2OBOFXKGps6dCq4Re2fkUsr1lMdIjwZgemIFsWqVKfg50IEDr8E3
	JVAdJD5YrifHwYdmp8mHRLbqq5Jsy8GEZgDPPLQkOVMQa7H+94iBKA/9YQGcooMQZ5MXbu9AWgvL4
	hIW1bWrY5JjmNcNK2F2ORXNcMNZLFfjGPPm9PuyJPbzDVDC2WFkelxhkC9OQ1uQMMpRyoFiTkR3n3
	619dbMOow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuh3-00018e-Lq; Tue, 05 May 2020 10:20:53 +0000
To: mail@adrianschmutzler.de, 'pedrowrt' <pedrowrt@cas.cat>,
 openwrt-devel@lists.openwrt.org
References: <820c7e91-d055-9803-fd9b-9ba79779c4ff@cas.cat>
 <005a01d622c1$babf9ac0$303ed040$@adrianschmutzler.de>
Date: Tue, 5 May 2020 12:10:30 +0200
In-Reply-To: <005a01d622c1$babf9ac0$303ed040$@adrianschmutzler.de>
MIME-Version: 1.0
Message-ID: <mailman.9831.1588673832.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "Roger Pueyo Centelles | Guifi.net via openwrt-devel"
 <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: ynezz@true.cz, Chuanhong Guo <gch981213@gmail.com>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] Multicast issue in 19.07.x release and master,
 fix it in 19.07.3 (?)
Content-Type: multipart/mixed; boundary="===============8312372385903220103=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============8312372385903220103==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8312372385903220103==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from [2a00:1508:1000::6d45:936] (helo=smtp1.guifi.net)
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVudO-0003uU-FD
	for openwrt-devel@lists.openwrt.org; Tue, 05 May 2020 10:17:10 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.guifi.net (Postfix) with ESMTP id 49Gb872XzTz3vq5;
	Tue,  5 May 2020 12:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=guifi.net; h=
	content-language:content-type:content-type:in-reply-to
	:mime-version:user-agent:date:date:message-id:from:from
	:references:subject:subject:received:received:received; s=dkim;
	 t=1588673431; x=1590487832; bh=NjzfMZiqa/HSQ39wfav6fPrZ9PQztknG
	mzEbd2UUCm0=; b=x6FN6UwkhHuGIJ6wzjmngMw9dOY7lhYvBXr7sFEgNXu9miuT
	ClhrE/p35XZkfvnILOJOjJlDo2UAMMUI2a7kNDTQgRqHmf9CliiO8n9vHNBFRxQu
	+kJHukeGoumWxee649iV7XFkQrVP0781Zx6oWyvw4Uvy6+OJgyb1EOqFvi78XHco
	R6gUxPkIw+y0M/+0omHKSOGXR2LKWjA7L+EPI6V2R5nptZfJ/QeCjPJsAXGo2wcK
	i2aDsINsp3v4cpelG2y22AcQHJbGE9YOj07DlukYHLTCCwldr07v0HSdAUuUEQWi
	z4v5DRxr5osVHLb5C9yaTYEv3npYDbE2cG5aSw==
X-Amavis-Modified: Mail body modified (using disclaimer) - smtp1.guifi.net
X-Virus-Scanned: Scrollout F1 at guifi.net
Received: from smtp1.guifi.net ([127.0.0.1])
	by localhost (smtp1.guifi.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id e6gtF8z9S5yd; Tue,  5 May 2020 12:10:31 +0200 (CEST)
Received: from mail.guifi.net (mail.guifi.net [109.69.9.9])
	by smtp1.guifi.net (Postfix) with ESMTP id 49Gb8660X7z3vpD;
	Tue,  5 May 2020 12:10:30 +0200 (CEST)
Received: from [10.1.33.9] (45-150-184-108.ipv4.at.exonet.cat [45.150.184.108])
	by mail.guifi.net (Postfix) with ESMTPSA id 87FD46A5150;
	Tue,  5 May 2020 12:10:30 +0200 (CEST)
Subject: Re: [OpenWrt-Devel] Multicast issue in 19.07.x release and master,
 fix it in 19.07.3 (?)
To: mail@adrianschmutzler.de, 'pedrowrt' <pedrowrt@cas.cat>,
 openwrt-devel@lists.openwrt.org
Cc: ynezz@true.cz, Chuanhong Guo <gch981213@gmail.com>
References: <820c7e91-d055-9803-fd9b-9ba79779c4ff@cas.cat>
 <005a01d622c1$babf9ac0$303ed040$@adrianschmutzler.de>
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Autocrypt: addr=roger.pueyo@guifi.net; keydata=
 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
Message-ID: <cb04f299-5b8a-a2f5-ae25-352e6177316d@guifi.net>
Date: Tue, 5 May 2020 12:10:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <005a01d622c1$babf9ac0$303ed040$@adrianschmutzler.de>
Content-Type: multipart/alternative;
 boundary="------------9A41297B8499F745F6AFB069"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_031706_943747_DC928A93 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS

This is a multi-part message in MIME format.
--------------9A41297B8499F745F6AFB069
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

You're right, it's a bug and not a patch which we've been able to
identify it's caused by commit
https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3Dc8c2ef1d4=
95dd3fd3096ac508e91a02f9c583ea8


As you can see, it's just a two-lines commit that resets the AR8216
switch during initialization, but it's part of a longer series of
AR8216-related commits. Reverting it makes IPv6 multicast work again on
the NanoStation XW, and probably others, but it could also break other
devices' switched networking (e.g., those QCA9558+AR8326 ones).

I understand it can't go wildly into 19.07.3 but, now that we're
discussing it, maybe the author of the patch can shed some light on the
issue.

Best,

Roger

El 5/5/20 a les 11:44, mail@adrianschmutzler.de ha escrit:
> Hi,
>
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
>> On Behalf Of pedrowrt
>> Sent: Dienstag, 5. Mai 2020 10:36
>> To: openwrt-devel@lists.openwrt.org
>> Cc: ynezz@true.cz
>> Subject: [OpenWrt-Devel] Multicast issue in 19.07.x release and master=
, fix it
>> in 19.07.3 (?)
>>
>> ff02::2 multicast is not working in nanostation xw, but roger pueyo fi=
nd a way
>> to solve it: revert commit
>> c8c2ef1d495dd3fd3096ac508e91a02f9c583ea8 (which is very short)
>>
>> I don't know the implications of doing it. But it fixes a bug that aff=
ects us a lot
>> (we have lots of these devices and they do routing through cable)
>>
>> https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D2848
> if I checked correctly, this is not applied to master or even proposed =
as patch?
>
> Then, you might be too late for this stable release. Normally, stuff sh=
ould stay in master for a few days before being backported.
>
> Best
>
> Adrian
>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


--------------9A41297B8499F745F6AFB069
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi,</p>
    <p>You're right, it's a bug and not a patch which we've been able to
      identify it's caused by commit
<a class="moz-txt-link-freetext" href="https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=c8c2ef1d495dd3fd3096ac508e91a02f9c583ea8">https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=c8c2ef1d495dd3fd3096ac508e91a02f9c583ea8</a>
      <br>
    </p>
    <p>As you can see, it's just a two-lines commit that resets the
      AR8216 switch during initialization, but it's part of a longer
      series of AR8216-related commits. Reverting it makes IPv6
      multicast work again on the NanoStation XW, and probably others,
      but it could also break other devices' switched networking (e.g.,
      those QCA9558+AR8326 ones).<br>
    </p>
    <p>I understand it can't go wildly into 19.07.3 but, now that we're
      discussing it, maybe the author of the patch can shed some light
      on the issue.</p>
    <p>Best,</p>
    <p>Roger<br>
    </p>
    <div class="moz-cite-prefix">El 5/5/20 a les 11:44,
      <a class="moz-txt-link-abbreviated" href="mailto:mail@adrianschmutzler.de">mail@adrianschmutzler.de</a> ha escrit:<br>
    </div>
    <blockquote type="cite"
      cite="mid:005a01d622c1$babf9ac0$303ed040$@adrianschmutzler.de">
      <pre class="moz-quote-pre" wrap="">Hi,

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">-----Original Message-----
From: openwrt-devel [<a class="moz-txt-link-freetext" href="mailto:openwrt-devel-bounces@lists.openwrt.org">mailto:openwrt-devel-bounces@lists.openwrt.org</a>]
On Behalf Of pedrowrt
Sent: Dienstag, 5. Mai 2020 10:36
To: <a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
Cc: <a class="moz-txt-link-abbreviated" href="mailto:ynezz@true.cz">ynezz@true.cz</a>
Subject: [OpenWrt-Devel] Multicast issue in 19.07.x release and master, fix it
in 19.07.3 (?)

ff02::2 multicast is not working in nanostation xw, but roger pueyo find a way
to solve it: revert commit
c8c2ef1d495dd3fd3096ac508e91a02f9c583ea8 (which is very short)

I don't know the implications of doing it. But it fixes a bug that affects us a lot
(we have lots of these devices and they do routing through cable)

<a class="moz-txt-link-freetext" href="https://bugs.openwrt.org/index.php?do=details&amp;task_id=2848">https://bugs.openwrt.org/index.php?do=details&amp;task_id=2848</a>
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
if I checked correctly, this is not applied to master or even proposed as patch?

Then, you might be too late for this stable release. Normally, stuff should stay in master for a few days before being backported.

Best

Adrian

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
_______________________________________________
openwrt-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">_______________________________________________
openwrt-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
      </blockquote>
    </blockquote>
  
<br>
<br>
</body>
</html>

--------------9A41297B8499F745F6AFB069--


--===============8312372385903220103==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8312372385903220103==--

