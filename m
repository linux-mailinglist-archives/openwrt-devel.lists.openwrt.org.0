Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47B010D090
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 Nov 2019 03:40:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3IOMRFhzoRyKtITRU+uMH8eK+kYVmhNdm4qbZVAlp7o=; b=Li5
	bcf7+neYrBM/ZgE7PA7EhwGbU+H09tg3OSWFXZA2TMCbBa8qxtjLc0/oaczZ/8QbOnDR7MfKmub0+
	bwfQsEyXZ9OohKH667bUb0Ylp43/b0tjxvMSufhilI0D6hkARxopYLgLrE151t/Ja+wE4qbe1KHg9
	5+VLJLzko/3LcpDUEN9YiLZqZAG+zvylg74ucRGF2CauhKf85LxuwV+zx+3KzESSTQo30NQwQVgj5
	Vzi78Wz54oCxkDihUjeFxT2J3QpS5mt7gY6t99nddEcj8tpQwphkiM0zB+lUMvofF4g29oH0hcLjm
	sx3apdFX6c8EUIltKlyg/dzyvQ715FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaWD6-0008Sn-Oo; Fri, 29 Nov 2019 02:40:44 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaWCz-0008S5-9K
 for openwrt-devel@lists.openwrt.org; Fri, 29 Nov 2019 02:40:38 +0000
Received: by mail-io1-xd33.google.com with SMTP id j13so30856083ioe.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 28 Nov 2019 18:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=lB3enhG1ibD5sH1519EGoXgN4oQcuYJOCQLawIb82EA=;
 b=IvuqhtjTSuSeRqYjsh4PuWfW7mAHZmSYVJiC3YVPQ3urJShWDe/oXETw16xGZXPg2S
 ZxMezj92Xm+9PfbNZabgOcN3NC4gM7qWHUhGprXLpUKpPEb0KzbR8xO6TLDivBaqjzcT
 2LJCNJDLoztemVPcZqOtRnAlWVXByPnI94wf00hlAptqDqtC7l+6dmRoWn2W/ilsXYp+
 wtUflHUe7RtUG7kUHtdc79yUjwBnRS75Yuc/puaQLZCvaz6gdEC9F2QWysooFTPjWKHo
 cmNRv5ThoY3HK4yHi2PkQg0IJp0+A1EXzy2juAhvuwfVLaBk8glggavY16Jsd13ZaP1F
 hmbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=lB3enhG1ibD5sH1519EGoXgN4oQcuYJOCQLawIb82EA=;
 b=sEaVzEUySMJvwc1A9Sgu22HrvXWaBt8pPOfQQkQD+9GZgvfiE6ONWVfvtUPkqhNi+0
 LgfElVM4K5BuaSKLf1miBQD/tWgmtQqeIXyUN5pqlQmthvnBJ1921H4g09vqLIUlvRDy
 SIYeyqgmCz7J6TwnW8pb13DMINgptbMjFvyONuHDGvQB0e45VWJ+gjSOOqLawSTCxUSz
 8L80GIvo8DJ36uran6+WtRpFeZRJKG4KZIn+A5BLB1jmUEK9Zkw3et8C4So6BfbyktFT
 mgSO6rdGT3phQjWyXrYKC2K0gTS/Qc45ntHboRTfhq5RatsrB5Gkhkw8copcOflYeKaG
 SklQ==
X-Gm-Message-State: APjAAAVtN3VKaz+HctxXolni12VLl/qmQ5IuOgwfmNS0vH58D5M5ARH0
 w1UatHeMjdFPW9LOb977KseVhd2DMStmWyQymmEORS/G3GU=
X-Google-Smtp-Source: APXvYqy5wnW/I124u3fT3BKva6ubFjUrI8zOXf6vmhRQh/n4ysUhpE2T3yCMcwVKVr6rb6OQNMs8SeWp6NOQdtHEks8=
X-Received: by 2002:a02:b155:: with SMTP id s21mr12902148jah.84.1574995232746; 
 Thu, 28 Nov 2019 18:40:32 -0800 (PST)
MIME-Version: 1.0
From: Joe Ayers <joe@ayerscasa.com>
Date: Thu, 28 Nov 2019 18:40:23 -0800
Message-ID: <CAALvt2MKiCHmZb5neZqjawnr-R1VAHpTK+LQafPrUj=i_UJ05w@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_184037_352415_86E99088 
X-CRM114-Status: UNSURE (   2.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d33 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] ath10k memory leak on 19.07 branch and mikrotik
 RB952Ui-5ac2nD?
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

Attempting to use the hAP ac lite model RB952Ui-5ac2nD with the 5GHz
radio0 802.11ac seems to be unstable and consume available memory.
This is only enabling radio0 with no other changes and bringing wifi
up/down to reproduce.   Am I doing something silly, or should I submit
a bug?

root@OpenWrt:/tmp# cat /etc/openwrt_release
DISTRIB_ID='OpenWrt'
DISTRIB_RELEASE='19.07-SNAPSHOT'
DISTRIB_REVISION='r10752-1859391e9e'
DISTRIB_TARGET='ar71xx/mikrotik'
DISTRIB_ARCH='mips_24kc'
DISTRIB_DESCRIPTION='OpenWrt 19.07-SNAPSHOT r10752-1859391e9e'
DISTRIB_TAINTS='no-all'
root@OpenWrt:/tmp# free
              total        used        free      shared  buff/cache   available
Mem:          59264       14104       33232        7804       11928       23352
Swap:             0           0           0
root@OpenWrt:/tmp# wifi up
'radio1' is disabled
'radio1' is disabled
root@OpenWrt:/tmp# free
              total        used        free      shared  buff/cache   available
Mem:          59264       19556       24204        7804       15504       16156
Swap:             0           0           0
root@OpenWrt:/tmp# date; free
Tue Nov 26 23:32:37 UTC 2019
              total        used        free      shared  buff/cache   available
Mem:          59264       29768       13984        7804       15512        5944
Swap:             0           0           0
root@OpenWrt:/tmp# date; free
Tue Nov 26 23:32:55 UTC 2019
              total        used        free      shared  buff/cache   available
Mem:          59264       33384       10368        7804       15512        2328
Swap:             0           0           0
root@OpenWrt:/tmp# date; free
Tue Nov 26 23:33:14 UTC 2019
              total        used        free      shared  buff/cache   available
Mem:          59264       37424       10452        7804       11388         304
Swap:             0           0           0
root@OpenWrt:/tmp# wifi down
-ash: can't fork: Out of memory
root@OpenWrt:/tmp# wifi down
-ash: can't fork: Out of memory
root@OpenWrt:/tmp# wifi down
/sbin/wifi: line 188: can't fork: Out of memory
Failed to parse message data
'radio1' is disabled
root@OpenWrt:/tmp# wifi down
Segmentation fault
Failed to parse message data
'radio1' is disabled
root@OpenWrt:/tmp# free
              total        used        free      shared  buff/cache   available
Mem:          59264       39436        8508        7804       11320           0
Swap:             0           0           0
root@OpenWrt:/tmp# wifi down
'radio1' is disabled
root@OpenWrt:/tmp# date; free
Tue Nov 26 23:34:08 UTC 2019
              total        used        free      shared  buff/cache   available
Mem:          59264       13716       33932        7804       11616       23892
Swap:             0           0           0
root@OpenWrt:/tmp#

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
