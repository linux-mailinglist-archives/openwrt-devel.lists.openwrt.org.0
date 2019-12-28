Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E58412BDB7
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 15:01:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yiOgWHIcyV4TwA20MJj6tgZ+UYEGLRPxpm7ARhbS078=; b=ULhhB/DRhPX6fP
	LlOE/fUZfn6nC5b/U1xwqEkn36CSRrohRrHH2UhgqOk2xQ+k7jgBi1+zMAlqFJjXSvVS0BaV/Cl2r
	BlKYA8FQ96u/TyIqs5/1jamuoCiAWr9aMC1g922wRl141JBVmTGv9WUexEIGD7St/LgwQJqG4PnXH
	ZTO79IY1lr4D5xS9K4Q8qJ6OhDNczKFeK5MYHQOkW7z3/D7O9zxjPJvaDlvhMdftIHkGJM5HA5cqj
	+9vcfrVLr/+cAym0Hz2IROCeNDzfs/iwh1jMoO/2OhTPkXxFWSpMMU6eLUStYZvXTyHwHou0eWSi4
	MGLoyM+GbxrBOqTG22sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilCeO-0002W6-7Q; Sat, 28 Dec 2019 14:01:04 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilCeG-0002Vn-Bf
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 14:00:58 +0000
Received: by mail-lf1-x144.google.com with SMTP id y1so22496579lfb.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Dec 2019 06:00:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=8ierFkAwJISaJhEQQGWrtJtQbQ6iTSGZp+cERHU07AE=;
 b=f4wg+Pw27h5drJlWIoY4juhepVu9DFtXROUo7sazVwGlKIZGvOfuhtoJha+Rv3Zl0x
 aN3IlQXvo1XUFeGbvOMbFI6waUJIrQcpCQi6KYAbt/lXNgJel9jiFOIrW0IwQYHdnOvH
 dy4NtazXiSVhR1YeI7Yz1BN5o3b+n9VeprOo0hlPw1ZhLzCkqQq0Le89eK916QXSplbu
 6mOKKUXs/HWmg/dePfqhNoY/2HB0x2mGWDKsZSZ52aaH/JcTvN5Xww0XLmsBtSZ6YlfE
 Ntycfmf999ue/zdUPYeU8dCJ2/spBHJQbT/i0a57bNBsE6n/7dhteGkYlkWudWySy5Wi
 PEeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=8ierFkAwJISaJhEQQGWrtJtQbQ6iTSGZp+cERHU07AE=;
 b=QJDsIMM7UBmAhEgFD6QR7IeFyZo/lC5/kxwKbX3KGg8QSADkX9z5Av18J2EHcyTFLv
 1lSMsrcqJIvWHaIacd2ZNXb/uK6jJVIzjS97UbOuHIXD9//g5aQhYMVoUf8fqonDlAfY
 h9PSsW0YC3su35TRe2BDZ0rm/nQZxl+k6CQRI540liToJvPZwY+HvibyIPIDii1VjTht
 RzXlHRQ6mXpaLWQpvSKLAfFOML9/l1hEHRUCktilwU+Vp4cIdztZFuBesId4SxYPWuVG
 ljC/LJjwIz41xmp6B+D2R7J+pZrqG1CZ5mvrKo+/78tpbIwltqF8GKWrH4H3QwT3+Pnh
 FxYA==
X-Gm-Message-State: APjAAAWLWrrfWl3CWo6yBetwbrUh7h+vuDfDKOQQ7wER0MChluOcfV53
 kanfFsdC08hcAqCxzBq9XbtRuQtt
X-Google-Smtp-Source: APXvYqzA58vT5wMKGeknhmKtr0gG4BftTLY43JYPPzJbreW6QyP/jXLofOlg4EejupnTM8MPT8XYRA==
X-Received: by 2002:ac2:44d9:: with SMTP id d25mr33593456lfm.15.1577541653698; 
 Sat, 28 Dec 2019 06:00:53 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id r2sm16077630lfn.13.2019.12.28.06.00.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Dec 2019 06:00:53 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBSE0nQr023898; Sat, 28 Dec 2019 17:00:50 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBSE0nWm023897;
 Sat, 28 Dec 2019 17:00:49 +0300
Date: Sat, 28 Dec 2019 17:00:49 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191228140048.GO11377@home.paul.comp>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_060056_424529_DFB559E9 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Preserving configs over sysupgrade on ath79/tiny
 broken for some boards (on 19.07 and master), possible solutions
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
Cc: Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

Status quo summary:

Many ath79/tiny devices will lose configs (almost) each time
sysupgrading. This is easy to fix for most of the boards that
consistently have compatible flash memory ICs (some TP-Links are not
elements of this set). The only easy fix for all the boards is to
revert the 4K sectors patch.


Rationale for using 4K erase sectors:

OpenWrt uses jffs2 filesystem for storing ssh host key, config files
and other auxilary information across reboots. For that to work at
least 5 erase blocks are needed. With regular 64 KiB sectors that
means your rootfs_data partition needs to be at least 320 KiB
big. This is clearly much more than enough, and you'll have to
sacrifice some of the features when packing your rootfs. Some flash
memory chips allow using 4 KiB erase sectors so the minimal
rootfs_data partition size becomes 20 KiB (in theory).

An example of why I think that is useful: I built a regular image
(sans PPP and LuCI) for my 4 MiB ath79 device with dnsmasq DNSSEC, SQM,
6in4 and udpxy. The whole firmware partition is 3776 KiB, of which
1442350 bytes go to kernel, 2424274 to rootfs and 116 KiB to
rootfs_data. With regular configuration 40 KiB of it are used, and 76
are free. And the system still has opkg so that I can easily install
tcpdump-mini or other diagnostic utilities to /tmp. This wouldn't be
possible (at least not with SQM) if I was using 64 KiB erase blocks on
this device.


Sysupgrade problem description:

During the upgrade process the saved configuration files are written
to the flash starting from the erase marker added to the sysupgrade
image during the pad-rootfs build image stage. If there is a mismatch
between BLOCKSIZE specified in the Makefile for the specific board and
erase block size as determined by the kernel by reading the flash
memory JEDEC ID and checking its capabilities from a table in spi-nor
driver then the erase marker will likely be misaligned. I've compiled
the list of all the ath79/tiny devices so that proper BLOCKSIZE could
be specified but faced an issue with some TP-Link boards that
according to certain sources can have factory memory with different
capabilities. The full list is at the end of this mail.


Possible solutions that come to mind:

1. Revert to using 64 KiB erase sectors on all ath79/tiny devices;

2. Fix BLOCKSIZE for those boards that are consistent, document
possible config loss for the others;

3. Change sysupgrade in a way to either:

3.1. When seeing the erase marker automatically align it to the
nearest erase sector boundary and act accordingly;

3.2. Ignore erase markers not placed at the runtime-detected erase
sector boundaries; make build system emit those at both 4K and 64K
locations;

3.3. Port kernel squashfs splitter logic to sysupgrade to make it find
the right place for the erase marker (or jffs2 with configs) fully on
its own.


That's how I see it, please fix me where I am wrong.


List of the ath79/tiny boards with references:

Buffalo WHR-G301N
http://openwrtwlan.blogspot.com/2012/11/wzr-g301ntftp.html
mx25l3205d
SECT_4K

DIR-615 E4
https://forum.archive.openwrt.org/viewtopic.php?id=52823
mx25l3205d
SECT_4K

PQI Air-Pen
http://www.srchack.org/article.php?story=20180924234149309
s25fl064k 8 MiB
(not important since 4K sectors not used on 8 MiB)

Netgear WNR612 v2
https://openwrt.org/toh/netgear/wnr612v2
mx25l3205d
SECT_4K

On Networks N150R (rebranded Netgear WNR612v2)
https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=b6e1cbd8dd5b8fe3833547480abdbd57edb3238c
mx25l3205d
SECT_4K

Netgear WNR1000 v2
https://gist.github.com/SaltwaterC/ef49c8a4df81c8896153
w25q32
SECT_4K

Netgear WNR2000 v3
https://oldwiki.archive.openwrt.org/toh/netgear/wnr2000
mx25l3206e (same JEDEC ID as mx25l3205d)
SECT_4K

TP-Link TL-MR10U
https://openwrt.org/toh/tp-link/tl-mr10u
Spansion FL032PIF 32Mbit or Eon EN25Q32B
64 KiB sectors

TP-Link TL-MR3020 v1
https://openwrt.org/toh/tp-link/tl-mr3020
S25FL032P
64 KiB sectors

TP-Link TL-MR3040 v2
https://openwrt.org/toh/tp-link/tl-mr3040
S25FL032P
64 KiB sectors

TP-Link TL-MR3220 v1
https://www.kaskus.co.id/show_post/58181950d9d77097618b4569/791/-
s25sl032p
64 KiB sectors

TP-Link TL-MR3420 v1
https://openwrt.org/toh/tp-link/tl-mr3420
v1: MX25L3206E; v1.1: F32-100HIP; v1.2: W25Q32BV/FL032PIF
v1: SECT_4K; v1.1: SECT_4K; v1.1: SECT_4/64 KiB

TP-Link TL-MR3420 v2
https://openwrt.org/toh/tp-link/tl-mr3420
v2.3 winbond or spansion?
???

TP-Link TL-WA901ND v2
https://openwrt.org/toh/tp-link/tl-wa901nd
s25sl032a
64 KiB sectors

TP-Link TL-WR703N
https://openwrt.org/toh/tp-link/tl-wr703n
s25sl032a
64 KiB sectors

TP-Link TL-WR740N v1/v2
https://openwrt.org/toh/tp-link/tl-wr740n
en25q32b
64 KiB sectors

TP-Link TL-WR740N v3
? https://eko.one.pl/forum/viewtopic.php?id=14257 ? en25f32 4k?
???
???

TP-Link TL-WR740N v4
http://bkil.blogspot.com/2014/12/tftp-secret-of-tl-wr740n-uncovered.html
s25sl032p
64 KiB sectors

TP-Link TL-WR741N/ND v1/v2
v1: ??? v2.4: https://openwrt.org/_media/media/tplink/tp-link-v2.4-serial-pins.jpg?cache= , 2.4: http://blog.hajma.cz/2014/02/tp-link-tl-wr741nd-unbricking.html
v1: ???; cFeon F32-100 en25f32, s25sl032p
???; SECT_4K, 64 KiB sectors

TP-Link TL-WR741N/ND v4
v4.3: https://openwrt.org/_media/media/tplink/tl-wr741/tl-wr741nd-v4_board.jpg?cache=
Spansion FL032P
64 KiB sectors

TP-Link TL-WR743ND v1
???
???
???

TP-Link TL-WR841N/ND v5/v6
???
???
???

TP-Link TL-WR841N/ND v7
https://openwrt.org/toh/tp-link/tl-wr841nd
Eon EN25F32
SECT_4K

TP-Link TL-WR841N/ND v8
https://openwrt.org/toh/tp-link/tl-wr841nd
Spansion FL032PIF
64 KiB sectors

TP-Link TL-WR841N/ND v9
https://openwrt.org/toh/tp-link/tl-wr841nd
Spansion FL032PIF
64 KiB sectors

TP-Link TL-WR841N/ND v10
https://openwrt.org/toh/tp-link/tl-wr841nd
Winbond 25Q32FVS1G
SECT_4K

TP-Link TL-WR841N/ND v11
https://openwrt.org/toh/tp-link/tl-wr841nd
Spansion FL032PIF
64 KiB sectors

TP-Link TL-WR841N/ND v12
https://openwrt.org/toh/tp-link/tl-wr841nd
Spansion FL032PIF
64 KiB sectors

TP-Link TL-WR940N v3
https://www.gargoyle-router.com/phpbb/viewtopic.php?t=8034
gd25q32
SECT_4K

TP-Link TL-WR940N v4
https://openwrt.org/_media/media/tplink/tl-wr940/tl-wr940n-v4_uart.jpg
gd25q32
SECT_4K

TP-Link TL-WR941ND v2/v3
https://openwrt.org/toh/tp-link/tl-wr941nd
the logs indicate that one of the v2.x devices mentioned has 8MB flash (prisma, RoundSparrow), while others had 4MB (juhosg (?), erreterr, sam.vanratt, _bbb_).
???

TP-Link TL-WR941ND v4
???
???
???

TP-Link TL-WR941ND v6
???
???
???

TP-Link TL-WR941ND v7 (CN)
???
???
???

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
