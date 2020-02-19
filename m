Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE57163B7D
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Feb 2020 04:43:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ac8uQcFVHKP6mGch8KZteyGTGTemgMyUadhYK5WFIc=; b=S3qoccHmLuuvSE
	rdwcSXchoKiP+RrV3mNiFDbINiNPqu4tRvNQXoKGAuIUBonVFfcax70HTab1VCLs8WqCv6EcHiNPs
	y5aplchqPm281RNciU1ZsARsZfJ2SpKXn/DAPQMfgkzANFXjNIrm4UFMVAU+w2v3vtDuhu621XpGs
	IWQmGzYPS1pTJKTLxMcEIpp944jFI0/jsO3oEccw1ZGrUlKeMH0qeHpaURxQxZyhUtB/vHEC1SMX6
	UuG/MlOlI+dyau0F0/SSizdbhoaXMKZNFzJcqpLlOOLq2gdChCikwhEnVdYHNVQZaxgpdPeQCmcAy
	KiS3UcmtVSRET98dVadg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4GGJ-0007yO-OV; Wed, 19 Feb 2020 03:42:59 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4GGC-0007y1-Ic
 for openwrt-devel@lists.openwrt.org; Wed, 19 Feb 2020 03:42:54 +0000
Received: by mail-qk1-x72b.google.com with SMTP id v2so21830043qkj.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 18 Feb 2020 19:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sMKWPqUzF/JTyEt5nBMyFF3yEBEwtKCAtZWpE7mQewo=;
 b=opR12ll0GL/+GsUFZgwdhUlDmQXCXfZ1rWsBnLd+Km1xgoThMZ6wcHgkw0ge0QIJkC
 DA6qtwVIHPBG8OTfNZLAGkKIl5HU8BEwdZWjhnUC2Pzhmzk9/5j6NkjiRCaE2uRjbYiC
 gnF5oPt0V3G051CM6OKxNft9TSH/7XJ9PAi44FZBBFDgRvkZ3fpODgWpnREwVoqx5HY+
 l8xicutqR1i0wKpRyxGGlkUnBrTiaZftxwBOIOUyewWAReb+TIimGdsoGOLRxvtWZVK0
 bNiSTAeWjMWZwr250f/NZiIZQZUotw5m165jRZ/Bcbpvi0sUKSSbI6JCNjkoyAX+2ZQu
 +h/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sMKWPqUzF/JTyEt5nBMyFF3yEBEwtKCAtZWpE7mQewo=;
 b=tHgYCgYOUv0QjLQMUWlRZVODo0OFcf/FDJB8YSPkHUksxqL4hH2BRGUEjExRHvLfNM
 TGa8+nuK5jqkNWLU+OfL4MzVtJVuCxiRdvAHWfnIEJdrCn0fEEGvLjsSQ7jbX390H3S3
 cyO8hBopM9tK56PYB76FatsjL+3hoHjb0oWlSg59w5lD/uE9QqMesZafwKLDq75ey7Av
 /rc2HzmkFzO08PG4cvuxEeh2KUxVqRVAn/6zJV1lKzEfiR68Vfzheplk67KnwTbS34o/
 hoyaYYBCmMvknOG655edERrdNDMzkeehdFo2HSzCzb4iMydcaGWm6dleN1CIDVSkRyLA
 U1ng==
X-Gm-Message-State: APjAAAWKbEB1m2mIZQyJm3VIKk6F2OWYGrTzoAaTpa0CMmwu6+T+SGVS
 5FqP5FIbv3O77uRlumWEv20UHNpB7qM=
X-Google-Smtp-Source: APXvYqzHY385hm8AVfXE0faQrXIFKyz4ovrxn/BDvND1NfaProZBgJ6vh1zud/ReWPyo74aL+zrYQw==
X-Received: by 2002:a37:9302:: with SMTP id v2mr21471551qkd.208.1582083770272; 
 Tue, 18 Feb 2020 19:42:50 -0800 (PST)
Received: from lord-gnome.lan (pool-100-8-210-135.nwrknj.fios.verizon.net.
 [100.8.210.135])
 by smtp.googlemail.com with ESMTPSA id r3sm297006qtc.85.2020.02.18.19.42.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Feb 2020 19:42:49 -0800 (PST)
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <31903fcf-bc5c-a484-e844-c3ce8516c37b@gmail.com>
 <018201d5e5c8$b7b797a0$2726c6e0$@adrianschmutzler.de>
From: Christopher Hill <ch6574@gmail.com>
Autocrypt: addr=ch6574@gmail.com; prefer-encrypt=mutual; keydata=
 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
 aBKLz78CnHfMSbo=
Message-ID: <6a14ed03-c333-607e-aab4-cd17119c3019@gmail.com>
Date: Tue, 18 Feb 2020 22:41:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <018201d5e5c8$b7b797a0$2726c6e0$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_194252_639849_70EB38DF 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ch6574[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ch6574[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Mikrotik ar71xx -> ath79 port
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2/17/20 2:30 PM, Adrian Schmutzler wrote:
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
>> Behalf Of Christopher Hill
>> Sent: Montag, 17. Februar 2020 16:03
>> To: openwrt-devel@lists.openwrt.org
>> Subject: [OpenWrt-Devel] Mikrotik ar71xx -> ath79 port
>>
>> Hi,
>>
>> New here, and am looking for some advice on porting an existing device
>> to ath79 - specifically a Mikrotik RB493G (which is NAND).
>>
>> The area I'm looking for guidance / tips on is getting the lzma-loader
>> to boot the new kernel. I have compiled a new image* and I can tftp boot
>> this and see on the serial console the lzma-loader running and
>> decompressing the kernel and then starting it... but then nothing
>> happens next.
> 
> Have a look at the annotations I put into your repo. It looks like you have mistaken size for partition endings in the DTS.
> I remember @rogerpueyo also had problems booting his device due to a wrong partition setup. Maybe fixing the partitions will be enough ...
> 
> Best
> 
> Adrian
> 

Thanks for pointing out the address vs. size confusion I had run into. I
fixed them up and re-built, but still nothing.

However after fiddling with the build options and turning on lzma
compression for the "ramdisk", output has now started to appear on the
serial console.

I wonder if this is something I should/could set in the Makefile?


[    0.000000] Linux version 4.19.101 (openwrt@home.lan) (gcc version
8.3.0 (OpenWrt GCC 8.3.0 r12212-39a49c2d6a)) #0 Wed Feb 19 02:56:24 2020
[    0.000000] bootconsole [early0] enabled
[    0.000000] CPU0 revision is: 00019374 (MIPS 24Kc)
[    0.000000] MIPS: machine is MikroTik RouterBOARD RB493G
[    0.000000] SoC: Atheros AR7161 rev 2
[    0.000000] Determined physical RAM map:
[    0.000000]  memory: 10000000 @ 00000000 (usable)
[    0.000000] Initrd not found or empty - disabling initrd

<snip>

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
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
