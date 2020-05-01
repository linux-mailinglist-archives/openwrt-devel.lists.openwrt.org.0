Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B73B81C153D
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 15:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CW/gXkUbn2wiWMctZLKDIihhZwzxXnMUVWsGJNs1+8k=; b=VDW
	pq8cU5wgQ9IcYMHNjbgGjw2f+/nxyl2cX5j8D1XDufNYYJjpeoySsVUTpH58/nxEQOQsF3VLqKtoc
	brBZoJVLuwVLz2C3Yl12IRVUSRzojHfMqtToWllFkCc6p3u1V6OsELbOA/Q2UHmSHMD4CbkBzQJeF
	89vg5+froLFaebdnh8EXVJiq106QYDHfHlCl6b9bkLURhuqnu7sE+79aiHmnbg8oEhjdkWg/w5oAJ
	luKkXrnB8YyNDsxbqZLUHcx5jBj4TBqihHKTAcWemt5n5QWiNCxKuu32hzGFsBEJDLr2ejLsnBZ4W
	0y8OQyJgbYy9cbcQEEIoRVzl45LjTAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUW1N-00034o-3p; Fri, 01 May 2020 13:48:05 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUW1H-00033k-4J
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 13:48:01 +0000
Received: by mail-io1-xd2d.google.com with SMTP id k18so4928934ion.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 01 May 2020 06:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aleksander-es.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=JFjIe9t9hTXc8GbTm9spgnhCtOiMKfTjB77O5eiBB4s=;
 b=LUq6IPWPFpQ+Zcr8tigS1pX0qJ7kw68I+LDjFfSGeABg04uOnoShI40sQK9vUIKaDb
 61EpmnDPpNJiB+evJdZNvIpDyoFpkZxwIrdLNc3pT4gfmMjMaxzz+BKil0lnj2TP2Qjh
 FPOmKXWE8FmCJ01AtEuQVxkxgws3v7Zp/iyOTs0ZpwVjITXATXfctQihQHPVqSgqrQVF
 OjfPMpKFOx8SEn1ESycc9K6yb6XNOM6AJDUiKeuc3IoAtxmC6wFduxsaDLhRwruR0rSr
 3VBLhJKXuXvbKYTWE+Y3V14NIrsnsmY/udOesHnIR70HsDkzmBcblKqHGHODVDU43/5/
 5q7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=JFjIe9t9hTXc8GbTm9spgnhCtOiMKfTjB77O5eiBB4s=;
 b=oyAGUE6HHL63JA/Qt0HCxG9RTJIjDMiri3yZ4kxeeJC60Nrqg06idMspCrq2YDsSr3
 djz5iBGC6pdATVEIeA+q4abffj4H7GKD7XJ7ANIwDiNBmEN48620Yw8TpHg8eapr4C2+
 dxpg82NzVIVHDU+BcvpNtZIXKKTItD5U93ied/1jWS61Gh5eHQqOeALwIvIrPp3K41ip
 GArUQOJO8lw/lKtQltxXWf2cxKNu5fqYYmtRrtNL0+UT9QuItl38lS0T563Ta8VRvIhs
 0xb7XYTVMSPFNpF6zT2he/Wj0d0CrmZG2xLaDNuMNhoOCNeFnQgoJaiCQHuDhoDCRGFE
 B4/g==
X-Gm-Message-State: AGi0Pub0zEF4Wj2qR+rdeIWWcYclRtp9FAh5lwBe89GKP+jMBAUbhDiw
 VV+PGX3XqiZ+uy764dvDHBVhFKGTm/bdpdoRpNZtOg==
X-Google-Smtp-Source: APiQypIqrvCWJG6piJDZ66ZMcconLPmGPAmBNsFSiHUXswShLfYUNF0VCY8fYiJvk/KDscD1g9nqbX2U1Nd9W1I1p98=
X-Received: by 2002:a02:1c83:: with SMTP id c125mr3287886jac.112.1588340877806; 
 Fri, 01 May 2020 06:47:57 -0700 (PDT)
MIME-Version: 1.0
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Fri, 1 May 2020 15:47:47 +0200
Message-ID: <CAAP7ucJV2RR-RbuihK8tAa2vxed44ngOYOZ4g_UqTgpc1cEBfQ@mail.gmail.com>
To: mantas@8devices.com, openwrt-devel <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_064759_233514_7BFDE231 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2d listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Issues backporting 4-byte opcode support for
 w25q256 fix to 4.14 kernel and Lima board
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

Hey Mantas,

I'm working on porting your 4-byte opcode support fix for the w25q256
(in openwrt git master, 4745969ad7c0cb65f55c8de1f05eba786ca27f71) to
the 4.14 kernel used in 19.07 for the Lima board.

The port is relatively easy just adding the post-bfpt parsing hook,
but I'm stuck much earlier than that. In the Lima board I'm testing
with (with a w25q256jv), the BFPT parsing is not even done. I've added
several logs along the spi-nor codebase to see why that happened, and
surprisingly the SFDP header version check done in
spi_nor_parse_sfdp() is failing; the header version read is 0xff000010
(??)

[    0.862552] m25p80 spi0.0: found w25q256, expected m25p80
[    0.868205] m25p80 spi0.0: running spi_nor_init_params...
[    0.873799] m25p80 spi0.0: info->flags SPI_NOR_DUAL_READ |
SPI_NOR_QUAD_READ: yes
[    0.881522] m25p80 spi0.0: info->flags !SPI_NOR_SKIP_SFDP: yes
[    0.887553] m25p80 spi0.0: will parse SFDP
[    0.891780] m25p80 spi0.0: parsing SFDP...
[    0.896047] m25p80 spi0.0: SFDP header version check failed...
signature 0xff000010 (!= 0x50444653), major 0 (!= 1)
[    0.916268] m25p80 spi0.0: running spi_nor_setup...
[    0.921319] m25p80 spi0.0: enabling 4 byte addressing mode...
[    0.927294] m25p80 spi0.0: w25q256 (32768 Kbytes)

The outcome is that the 4-byte opcode is not enabled and the spi-nor
ends up running in 4-byte addressing mode instead. Any idea or hint
why this could be happening? Does the 0xff000010 header version value
ring any bell?

If I use the 8devices openwrt git master (v2.10) instead of the
upstream one, which has the original fix you implemented for the
w25q256 support a while ago (commit
02c8ce11bf86dd4a99614ffa0b21f2dadb08b012) I can confirm that the fix
is being applied for the w25q256jv (that implementation dumps a "Using
4B command set" message when opcodes are used). And so, I'm also
assuming that the SFDP header version check is actually succeeding in
this build, as that version check is done before parsing the BFPT. Is
the SFDP header read failing in 19.07 for some reason I don't yet
understand?

I also tried to use openwrt git master with kernel 5.4 but that is not
available yet for the Lima board, only for the Carambola2. Is there
any plan to have the Lima board added to the ath79 target?

Cheers!

-- 
Aleksander
https://aleksander.es

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
