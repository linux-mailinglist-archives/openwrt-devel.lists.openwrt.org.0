Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C671642A1
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Feb 2020 11:53:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:Date:References:To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oAnYa3L0DdM6kuuFvxogw5obun9qtx+WgPfvLjaOMZ4=; b=DsD1GhKzVvuSlgYzRjhhb1aFg
	Y4dciX15TSOczeUEPSbGNq+RpJHZPA+xKyWeHwUGt8//BFnRVb+Gf2bGzknWYlfs/sEWCA9jEXufk
	MwB52yb57mwQNcq7JngyavrYLnjEHcQh3APITvwG+8nApqMGH3KiGBgKeg6R0zHTEosjXczA8rWhS
	zxGR5sT0YUyA5kl/9YVhx4b2Au62Ab2tP+D+5pVnVH1BH0j8qwSwVDBj9NdkxrO/MS49wX8XJTk3n
	SeSZbI3t9im+fy5LJs8dXkO+Lel7zrKVwTKLknQnSfQ4pPfi8cTkButA1VJVrEIomXVZO0vqXCN6J
	gEf4f9keA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4MyV-0002Fc-Bw; Wed, 19 Feb 2020 10:53:03 +0000
To: Christopher Hill <ch6574@gmail.com>, openwrt-devel@lists.openwrt.org
References: <31903fcf-bc5c-a484-e844-c3ce8516c37b@gmail.com>
 <018201d5e5c8$b7b797a0$2726c6e0$@adrianschmutzler.de>
 <6a14ed03-c333-607e-aab4-cd17119c3019@gmail.com>
Date: Wed, 19 Feb 2020 11:52:30 +0100
In-Reply-To: <6a14ed03-c333-607e-aab4-cd17119c3019@gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.31775.1582109579.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "Roger Pueyo Centelles | Guifi.net via openwrt-devel"
 <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] Mikrotik ar71xx -> ath79 port
Content-Type: multipart/mixed; boundary="===============0007314979768460793=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============0007314979768460793==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0007314979768460793==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from smtp1.guifi.net ([109.69.9.53])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4MyO-0002E5-5A
	for openwrt-devel@lists.openwrt.org; Wed, 19 Feb 2020 10:52:58 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.guifi.net (Postfix) with ESMTP id 48Mvgg4Fd3z3w44;
	Wed, 19 Feb 2020 11:52:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=guifi.net; h=
	content-language:content-type:content-type:in-reply-to
	:mime-version:user-agent:date:date:message-id:from:from
	:references:subject:subject:received:received:received; s=dkim;
	 t=1582109551; x=1583923952; bh=4zhs+HegCB1lp8ee3DehbMe0+wSXpdvF
	C79HxaHuPqA=; b=eA2PZnxv7+P8y8xq+GONzeD5erRHzOYF+r2oTIlBL5wL5goT
	wHipHJ0oyWFZnILId0OObMvxziZ3jdN8TlkCt7JwqzycGQ5i0zU9rai2ycfy8Qux
	fHN4KC9rIp7wNpiFtDM6vE3uj4qvLJuWWrML5sRNoYIewR1yBj7Ra2MBBTUnNuh7
	wwlQczotmT7zKk4OwdreGr9klRhh3d9WIInzLpon2KrgHPk9VcfOmcPu95GcWvIb
	7EGpjeIkzHMR+6jMspHw7xJo/Z6zA+IwUdGD4i2SYkuXzb35CozObGc5jbOiijVU
	usxWdCxmGHM0QkQJuEPYdpVea+gjKw+vVQL0Dg==
X-Amavis-Modified: Mail body modified (using disclaimer) - smtp1.guifi.net
X-Virus-Scanned: Scrollout F1 at guifi.net
Received: from smtp1.guifi.net ([127.0.0.1])
	by localhost (smtp1.guifi.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id DbBc_zd3N39G; Wed, 19 Feb 2020 11:52:31 +0100 (CET)
Received: from mail.guifi.net (mail.guifi.net [109.69.9.9])
	by smtp1.guifi.net (Postfix) with ESMTP id 48Mvgg1nyFz3w3v;
	Wed, 19 Feb 2020 11:52:31 +0100 (CET)
Received: from [147.83.42.185] (dync-42-185.ac.upc.es [147.83.42.185])
	by mail.guifi.net (Postfix) with ESMTPSA id D83036AC25B;
	Wed, 19 Feb 2020 11:52:30 +0100 (CET)
Subject: Re: [OpenWrt-Devel] Mikrotik ar71xx -> ath79 port
To: Christopher Hill <ch6574@gmail.com>, openwrt-devel@lists.openwrt.org
References: <31903fcf-bc5c-a484-e844-c3ce8516c37b@gmail.com>
 <018201d5e5c8$b7b797a0$2726c6e0$@adrianschmutzler.de>
 <6a14ed03-c333-607e-aab4-cd17119c3019@gmail.com>
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Autocrypt: addr=roger.pueyo@guifi.net; prefer-encrypt=mutual; keydata=
 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
Message-ID: <0b11827c-2632-1d8c-d69f-1c5c85b715bd@guifi.net>
Date: Wed, 19 Feb 2020 11:52:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <6a14ed03-c333-607e-aab4-cd17119c3019@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------B0AAC21B0DB72D7870A25B60"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_025256_648629_3B496518 
X-CRM114-Status: GOOD (  16.92  )
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
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

This is a multi-part message in MIME format.
--------------B0AAC21B0DB72D7870A25B60
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Christopher,

Congratulations on your progress! :)

Besides the RB922, I've got a couple more MikroTik devices in the
process of being supported: RouterBOARD 750GL
<https://github.com/rogerpueyo/openwrt/tree/ath79-mikrotik-rb-750gl> [1]
and OmniTIK UPA-H5nD
<https://github.com/rogerpueyo/openwrt/tree/ath79-mikrotik-routerboard-om=
nitik-upa-5hnd>
[2]. They're not ready yet (I can't make the NAND memory work) but you
may want to take a look at them for inspiration.

Cheers!

Roger

[1] https://github.com/rogerpueyo/openwrt/tree/ath79-mikrotik-rb-750gl

[2]
https://github.com/rogerpueyo/openwrt/tree/ath79-mikrotik-routerboard-omn=
itik-upa-5hnd

El 19/2/20 a les 4:41, Christopher Hill ha escrit:
> On 2/17/20 2:30 PM, Adrian Schmutzler wrote:
>>> -----Original Message-----
>>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] =
On
>>> Behalf Of Christopher Hill
>>> Sent: Montag, 17. Februar 2020 16:03
>>> To: openwrt-devel@lists.openwrt.org
>>> Subject: [OpenWrt-Devel] Mikrotik ar71xx -> ath79 port
>>>
>>> Hi,
>>>
>>> New here, and am looking for some advice on porting an existing devic=
e
>>> to ath79 - specifically a Mikrotik RB493G (which is NAND).
>>>
>>> The area I'm looking for guidance / tips on is getting the lzma-loade=
r
>>> to boot the new kernel. I have compiled a new image* and I can tftp b=
oot
>>> this and see on the serial console the lzma-loader running and
>>> decompressing the kernel and then starting it... but then nothing
>>> happens next.
>> Have a look at the annotations I put into your repo. It looks like you=
 have mistaken size for partition endings in the DTS.
>> I remember @rogerpueyo also had problems booting his device due to a w=
rong partition setup. Maybe fixing the partitions will be enough ...
>>
>> Best
>>
>> Adrian
>>
> Thanks for pointing out the address vs. size confusion I had run into. =
I
> fixed them up and re-built, but still nothing.
>
> However after fiddling with the build options and turning on lzma
> compression for the "ramdisk", output has now started to appear on the
> serial console.
>
> I wonder if this is something I should/could set in the Makefile?
>
>
> [    0.000000] Linux version 4.19.101 (openwrt@home.lan) (gcc version
> 8.3.0 (OpenWrt GCC 8.3.0 r12212-39a49c2d6a)) #0 Wed Feb 19 02:56:24 202=
0
> [    0.000000] bootconsole [early0] enabled
> [    0.000000] CPU0 revision is: 00019374 (MIPS 24Kc)
> [    0.000000] MIPS: machine is MikroTik RouterBOARD RB493G
> [    0.000000] SoC: Atheros AR7161 rev 2
> [    0.000000] Determined physical RAM map:
> [    0.000000]  memory: 10000000 @ 00000000 (usable)
> [    0.000000] Initrd not found or empty - disabling initrd
>
> <snip>
>
> [    3.748527] Serial: 8250/16550 driver, 1 ports, IRQ sharing disabled=

> [    3.755514] console [ttyS0] disabled
> [    3.759186] 18020000.uart: ttyS0 at MMIO 0x18020000 (irq =3D 10,
> base_baud =3D 10625000) is a 16550A
> [    3.767997] console [ttyS0] enabled
> [    3.767997] console [ttyS0] enabled
> [    3.774948] bootconsole [early0] disabled
> [    3.774948] bootconsole [early0] disabled
> [    3.789083] m25p80 spi0.0: unrecognized JEDEC id bytes: 00, 00, 00
> [    3.795286] m25p80: probe of spi0.0 failed with error -2
>
>
> Then it halts. However this is good progress!
>
>
> Regards,
> Chris
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


--------------B0AAC21B0DB72D7870A25B60
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi Christopher,</p>
    <p>Congratulations on your progress! :)</p>
    <p>Besides the RB922, I've got a couple more MikroTik devices in the
      process of being supported: <a moz-do-not-send="true"
href="https://github.com/rogerpueyo/openwrt/tree/ath79-mikrotik-rb-750gl">RouterBOARD
        750GL</a> [1] and <a moz-do-not-send="true"
href="https://github.com/rogerpueyo/openwrt/tree/ath79-mikrotik-routerboard-omnitik-upa-5hnd">OmniTIK
        UPA-H5nD</a> [2]. They're not ready yet (I can't make the NAND
      memory work) but you may want to take a look at them for
      inspiration.</p>
    <p>Cheers!<br>
    </p>
    <p>Roger<br>
    </p>
    <p>[1]
      <a class="moz-txt-link-freetext" href="https://github.com/rogerpueyo/openwrt/tree/ath79-mikrotik-rb-750gl">https://github.com/rogerpueyo/openwrt/tree/ath79-mikrotik-rb-750gl</a></p>
    <p>[2]
<a class="moz-txt-link-freetext" href="https://github.com/rogerpueyo/openwrt/tree/ath79-mikrotik-routerboard-omnitik-upa-5hnd">https://github.com/rogerpueyo/openwrt/tree/ath79-mikrotik-routerboard-omnitik-upa-5hnd</a><br>
    </p>
    <div class="moz-cite-prefix">El 19/2/20 a les 4:41, Christopher Hill
      ha escrit:<br>
    </div>
    <blockquote type="cite"
      cite="mid:6a14ed03-c333-607e-aab4-cd17119c3019@gmail.com">
      <pre class="moz-quote-pre" wrap="">On 2/17/20 2:30 PM, Adrian Schmutzler wrote:
</pre>
      <blockquote type="cite">
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">-----Original Message-----
From: openwrt-devel [<a class="moz-txt-link-freetext" href="mailto:openwrt-devel-bounces@lists.openwrt.org">mailto:openwrt-devel-bounces@lists.openwrt.org</a>] On
Behalf Of Christopher Hill
Sent: Montag, 17. Februar 2020 16:03
To: <a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
Subject: [OpenWrt-Devel] Mikrotik ar71xx -&gt; ath79 port

Hi,

New here, and am looking for some advice on porting an existing device
to ath79 - specifically a Mikrotik RB493G (which is NAND).

The area I'm looking for guidance / tips on is getting the lzma-loader
to boot the new kernel. I have compiled a new image* and I can tftp boot
this and see on the serial console the lzma-loader running and
decompressing the kernel and then starting it... but then nothing
happens next.
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
Have a look at the annotations I put into your repo. It looks like you have mistaken size for partition endings in the DTS.
I remember @rogerpueyo also had problems booting his device due to a wrong partition setup. Maybe fixing the partitions will be enough ...

Best

Adrian

</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Thanks for pointing out the address vs. size confusion I had run into. I
fixed them up and re-built, but still nothing.

However after fiddling with the build options and turning on lzma
compression for the "ramdisk", output has now started to appear on the
serial console.

I wonder if this is something I should/could set in the Makefile?


[    0.000000] Linux version 4.19.101 (<a class="moz-txt-link-abbreviated" href="mailto:openwrt@home.lan">openwrt@home.lan</a>) (gcc version
8.3.0 (OpenWrt GCC 8.3.0 r12212-39a49c2d6a)) #0 Wed Feb 19 02:56:24 2020
[    0.000000] bootconsole [early0] enabled
[    0.000000] CPU0 revision is: 00019374 (MIPS 24Kc)
[    0.000000] MIPS: machine is MikroTik RouterBOARD RB493G
[    0.000000] SoC: Atheros AR7161 rev 2
[    0.000000] Determined physical RAM map:
[    0.000000]  memory: 10000000 @ 00000000 (usable)
[    0.000000] Initrd not found or empty - disabling initrd

&lt;snip&gt;

[    3.748527] Serial: 8250/16550 driver, 1 ports, IRQ sharing disabled
[    3.755514] console [ttyS0] disabled
[    3.759186] 18020000.uart: ttyS0 at MMIO 0x18020000 (irq = 10,
base_baud = 10625000) is a 16550A
[    3.767997] console [ttyS0] enabled
[    3.767997] console [ttyS0] enabled
[    3.774948] bootconsole [early0] disabled
[    3.774948] bootconsole [early0] disabled
[    3.789083] m25p80 spi0.0: unrecognized JEDEC id bytes: 00, 00, 00
[    3.795286] m25p80: probe of spi0.0 failed with error -2


Then it halts. However this is good progress!


Regards,
Chris

_______________________________________________
openwrt-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
    </blockquote>
  
<br>
<br>
</body>
</html>

--------------B0AAC21B0DB72D7870A25B60--


--===============0007314979768460793==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0007314979768460793==--

