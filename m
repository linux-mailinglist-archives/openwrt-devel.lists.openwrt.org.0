Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B20A1744E8
	for <lists+openwrt-devel@lfdr.de>; Sat, 29 Feb 2020 05:49:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SdAOH5KXPnuKnH57HMhO1MTdjqZIfcWMT8XgUedu/3I=; b=XW4vka3x1AMsfb
	1/vocIHzDdlv5CDUjXCSsrTdjr9htDVEteI2OhnSJZoPiOlGF5PnNy/vfOdFtTzT/IkXuj0w7D8ow
	iA4kKqlVqluflS3ZZQC/RP/AAYQS3UgzcMdVfVYc+j40PCm+HtkfNObmxL/pk+6ZdxEI5LWmBVJ5U
	cvfR/wZhgmzAI142hH/Y4l1mXnnV+Nlfjh1u7M+u83Am7OTkHMWh4ODZVnnLKS9Yk+H6ySpp2q8rs
	3o+9sXXQ63xMR1Xoa8J0dxm1fKNUyTPhgw41LjD2/RRtEQ+wDU/u9QNAkBsUqwcsxgPjUirREhX5m
	kqrVYhqt+NmpvqjtqN7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7u4C-0006Zu-4Q; Sat, 29 Feb 2020 04:49:32 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7u42-0006ZY-Gb
 for openwrt-devel@lists.openwrt.org; Sat, 29 Feb 2020 04:49:24 +0000
Received: by mail-qt1-x831.google.com with SMTP id t13so3732927qto.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 28 Feb 2020 20:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:autocrypt:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=822nun2Svl/a1lXbIotb/NNqpq5w1YBimuCtXj/I/nA=;
 b=obgGao80WSoKI3l+YvvQLRSxIGMENoc0Tq22iUOKN4LOrNZZhhJXkcTjOaa3nUOuWy
 QxJqoDpFfVQO6xl6EUnEAAGeC4FwhAtBnGTfk5m75WrxnvOVJgHDm1rivsxS11ytet+3
 EDVnNYptBGNIv3GwMBjztMLbbStnMLW0nkxAoXeZVKseqzfaGTIclqpUXWRnVz3UYaVr
 YngFEJUOa6ZbFzTw7k4Xlrq5IKV6O3YxS+yZAHAzsiswQLE5e6MKhjltwNUvHyXYN05a
 qZHyFYQ38hP8kd86QS97zDFjsaoSzULs9f94NOWZkv8+YsLK3aweV/j1Ea6jzZLEfNGd
 T7/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:autocrypt:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=822nun2Svl/a1lXbIotb/NNqpq5w1YBimuCtXj/I/nA=;
 b=rQTb8glfE4RbseBRSUmdRwg3kaQUldwQnebt/nsKq6s2gGxZI3V4Wd94mfxO32Yh8z
 snSOpTVbIF2uA1M0/tgtYng9KOUzDGeGgExpq8aFc0L9+7gDcJeqQQbRayoaJcsGxY2y
 GOuEWzyxtENoYLJuma1PaFD2LxICi1IJHuWVaCCxiNfBWQyZ0Y6LSePsoruYbrrMXa+L
 Bq4fln8aO3x0PvFMpSeZePbJh7/wqHihExGwqkj8xZyt4Nk5zwJu+fxBSexLP9VIAr+z
 XGRg7TnKgVlZ6oO+p7eSoF8tdQZP+gTStRiR5+sl96uYR+3xBLqOqGjO/ijIkcnnjtSc
 ZNXA==
X-Gm-Message-State: APjAAAUFNw+R7QihHGgKIIw/k7Itxa5X1kCjchG0ncBBPdxXCwU2nSYq
 K1ypHBiFQmdiuQhmFVgwmLDTqF90tP0=
X-Google-Smtp-Source: APXvYqynLgpkrcEzig9HmZGY6naidDnjFU1PTqk6zGTd8yGHBWpD/JsIQ/bgc0Gz7SYb/UETk1pGUg==
X-Received: by 2002:aed:3841:: with SMTP id j59mr7335518qte.220.1582951758061; 
 Fri, 28 Feb 2020 20:49:18 -0800 (PST)
Received: from lord-gnome.lan (pool-100-8-210-135.nwrknj.fios.verizon.net.
 [100.8.210.135])
 by smtp.googlemail.com with ESMTPSA id r198sm6470003qke.98.2020.02.28.20.49.17
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Feb 2020 20:49:17 -0800 (PST)
From: Christopher Hill <ch6574@gmail.com>
To: openwrt-devel@lists.openwrt.org
Autocrypt: addr=ch6574@gmail.com; prefer-encrypt=mutual; keydata=
 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
 aBKLz78CnHfMSbo=
Message-ID: <a1e27da9-ce2b-24c7-b362-a8a03a07c0d6@gmail.com>
Date: Fri, 28 Feb 2020 23:47:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_204922_579370_072DA38C 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ch6574[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ch6574[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:831 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Regarding change "ath79: move lzma-loader to the
 end of available RAM"
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

Hello,

I was looking at this recent change [1] to move the lzma-loader in
ath79, which has comment:


"In certain cases, the uncompressed initramfs image will overwrite
the lzma-loader, which is currently only 10 MB away from kernel image
start. To prevent this, change LZMA_TEXT_START to 24 MB, so loader
and compressed image have 8 MB at the end of RAM and uncompressed
image has 24 MB available."


I bring this up as I'm (slowly) porting a Mikrotik rb493g for ath79 [2]
and I believe I need additional change in this area.

Looking at the older ar71xx image
"openwrt-19.07.0-ar71xx-mikrotik-vmlinux-initramfs-lzma.elf" binwalk
shows "LZMA compressed data, properties: 0x6D, dictionary size: 8388608
bytes, uncompressed size: 7543556 bytes" and this boots fine.

Building an ath79 image from latest git sources and running binwalk
shows "LZMA compressed data, properties: 0x6D, dictionary size: 8388608
bytes, uncompressed size: 12491705 bytes"

i.e. instead of a 7MB image, it's now a 12MB image.

I was thinking the lzma-loader change would mean this is OK, however it
will not boot.

So...

I added configuration "default TARGET_INITRAMFS_COMPRESSION_LZMA if
TARGET_ath79" and this reduces the generated image to "uncompressed
size: 8396454 bytes"

i.e. an 8MB image, and this will boot.


Perhaps this is an issue with RouterBOOT booter 6.41, or the rb4xx
series boards and this new location?


Thanks,
Chris


N.B. If I add LuCI to this smaller image it grows to "uncompressed size:
8752277 bytes" and this will also not boot.



[1]
https://github.com/openwrt/openwrt/commit/071a6372762d289b2fa5a8d1a138eff944c93c9e

[2]
https://github.com/ch6574/openwrt/commit/deeb9203f73a396ddca89aa8b2ce69c47974afe5

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
