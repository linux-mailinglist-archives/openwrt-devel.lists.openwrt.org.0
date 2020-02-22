Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237EC168CDB
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 07:14:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AsuHwzv+uVhJbZvgQ7HaZPKCSdgzk75yRltBaEuu86k=; b=NsOtcliwqJxpL8
	cGQlBHdMZsmPV7W5su/QVb1QZvHAPd4DHHY9ajS4glqSwgwV6YeCA/n6zRv1Qaj/oC+YbRdLJt0Yu
	0KpshlGJpJq0LNst2poE7R+DE+IfdJ5VRl2RfNwo5HFXS2RfpkeDX+b6VUgRadkK7Owx3hyzNdoVV
	R+iIMYQEUfVsFDsYbn3r3NVzkAZX8oGSWty8ruGkjq5V+lp+iYyD/Fn9fEozWvHQgI41ZS9koy+oT
	pJy9AU7Oj4lveqUfddPrYosIswjGZzGEMlKA5CXBfaINfr6Q7+NMhrcHDDb4N0mMPsLFgVTvONE7B
	l0RZHtRbkqaMKCIbFclQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5O3Y-0005dz-7O; Sat, 22 Feb 2020 06:14:28 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5O3O-0005dX-EV
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 06:14:22 +0000
Received: by mail-qv1-xf32.google.com with SMTP id ff2so1994118qvb.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 21 Feb 2020 22:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yypLVI8niVp9+HxGddpSWGqm3vkDnlbnXP2TdHjxHQ0=;
 b=ohzG1BoaOZZhijZr1y9ap05K/BvAXHIpGWP1AwZ/lbT0fP38bgbRKzA6RS7DZAaZ6s
 caUv7R4QOFgFXQfDMwoaYTCriweqQfH4nUDZs0tm4hS682a4YHLxZDISvngCvg0EiUom
 1QmCTNqqC4en/A5gJQvLLbbAa9shpVpqPrEJbRn5qWQDAVSuav7gDHbwKy33MIw/fYe+
 M4x86fa7OWiFIHIeFSwwzdHztIcu80vbAkHUSHIKGMMGCzY09spIp7d/Z1nqwyKO56em
 /yVYDN62PI2R6Gs4AmlwzZv7PGgoq+8/nHRcF0qJNmAZuTlfg5fmblM2tQgJ5U3Wahw5
 cmCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=yypLVI8niVp9+HxGddpSWGqm3vkDnlbnXP2TdHjxHQ0=;
 b=Tpkvell9W2m5womS9YM8XD9XsM/m2auoOW1FjVvGIo4DSKO4i2whKfSfLrnhDFCZbw
 N0jgG3jPe4v9jJf7QvNGMbArbxqXGsQ3nx9YOGdw1xYUdltr1MLKUWfXtcbY+1akhIDl
 EQnucHbH9sKh+gX8nEQRIDH1u8hMbfhtBtjV2lFBXgN+r/3scTv0q6F8yk7ooLQBuHTB
 2L3TMWbUWNxSwQXnDY5ZHfJn3n16AVATgb/cVRACrfeWwJ6rP7/vOErnHODDRqlxpewr
 hy0NZhlOKuKtzdecV4Fz9OF8s9dljC+jZ7eB5ByRY97wFDTPn7VSwxcaFZMpApGI8/Is
 +fNQ==
X-Gm-Message-State: APjAAAU/RMwABrzufgpzLvYmzJb7S3YBqFV4q6GN4kZM3l1Sh1vjGtFr
 yUc5Qp2NgWoVZoRFYlbaEcOCvyVfEsM=
X-Google-Smtp-Source: APXvYqyqb+MdDrtEDGfEtxmU3n30eRZBZrp602NWxOreEHV3NDGn9m/1CARWi1sOBAjg7d2DGI2KjQ==
X-Received: by 2002:a0c:edc3:: with SMTP id i3mr34169912qvr.29.1582352056895; 
 Fri, 21 Feb 2020 22:14:16 -0800 (PST)
Received: from lord-gnome.lan (pool-100-8-210-135.nwrknj.fios.verizon.net.
 [100.8.210.135])
 by smtp.googlemail.com with ESMTPSA id c26sm2710749qtn.19.2020.02.21.22.14.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 21 Feb 2020 22:14:16 -0800 (PST)
To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>,
 openwrt-devel@lists.openwrt.org
References: <31903fcf-bc5c-a484-e844-c3ce8516c37b@gmail.com>
 <018201d5e5c8$b7b797a0$2726c6e0$@adrianschmutzler.de>
 <6a14ed03-c333-607e-aab4-cd17119c3019@gmail.com>
 <0b11827c-2632-1d8c-d69f-1c5c85b715bd@guifi.net>
From: Christopher Hill <ch6574@gmail.com>
Autocrypt: addr=ch6574@gmail.com; prefer-encrypt=mutual; keydata=
 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
 aBKLz78CnHfMSbo=
Message-ID: <97ccf4b9-a592-610e-6243-ae8b7a93b329@gmail.com>
Date: Sat, 22 Feb 2020 01:12:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <0b11827c-2632-1d8c-d69f-1c5c85b715bd@guifi.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_221418_513125_1003D613 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ch6574[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ch6574[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2/19/20 5:52 AM, Roger Pueyo Centelles | Guifi.net wrote:
> Hi Christopher,
> 
> Congratulations on your progress! :)
> 
> Besides the RB922, I've got a couple more MikroTik devices in the
> process of being supported: RouterBOARD 750GL
> <https://github.com/rogerpueyo/openwrt/tree/ath79-mikrotik-rb-750gl> [1]
> and OmniTIK UPA-H5nD
> <https://github.com/rogerpueyo/openwrt/tree/ath79-mikrotik-routerboard-omnitik-upa-5hnd>
> [2]. They're not ready yet (I can't make the NAND memory work) but you
> may want to take a look at them for inspiration.
> 
> Cheers!
> 
> Roger


Thanks for the pointers. I think attempting this rb493G board has turned
into a very big undertaking (for me) as I believe I now need to do the
following:


1.  Copy over the ar71xx file "drivers/spi/spi-rb4xx.c" and add a
".of_match_table" entry so the DTS file can use it in a "compatible"
section instead of the "jedec,spi-nor" driver most are using.

I think this driver is available via upstream now, and so I probably
just need to patch instead of copy..?

https://github.com/torvalds/linux/blob/master/drivers/spi/spi-rb4xx.c


2.  Copy over the ar71xx "drivers/spi/spi-rb4xx-cpld.c" and add device
tree support sections. This was rejected upstream a few years ago from
what I can find on Google.


3.  The two Ethernet switches are working now (one is a special
bitbanged mdio only on this board), so it's really just the storage left
to do. I'll try and play with the ar71xx "drivers/mtd/nand/rb4xx_nand.c"
code next week. Probably copy that to the ath79 tree...


I wonder if this is why there used to be a special "mikrotik" target in
the old ar71xx tree due to all this custom driver code?

Chris


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
