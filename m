Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E478C1306C0
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 09:14:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i5IqFeQzp7JSPa4lrxw0rkUVo4YSNs41ZfJqA+PcTRs=; b=ka0VfXlADnHH1q
	92Bx8KUfHc0zPX9kJj1MHtpK0XmheUcLkFZfZ2bRG/APAvuC3dEddDGtYLG7x4HxLRIWkS7xB5JJI
	geNFzf2Qu6bE/lceUsIiMvOG0fMoJe/rnXUG+a5b5naTqdcjYoKyhs61qje/ofSi2Zyb60zZW+kqf
	uLudLBLtAXNoRGzx6TLjrYlirod1Fbkq+iS7n51W2Ns+/5hx7xpKSC6PL/3KDb1ry3zTq7LPBJsSD
	tzodaB898OKY3/XQuHFZJfZk/CtfsCD0Y+0nv/F+ZU11qdAgnvKrrPXYO+9/piHTSitMTDK/kywCn
	l0yOYwjkVbQPiesyr5Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io137-0003OB-2G; Sun, 05 Jan 2020 08:14:13 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io12w-0003NX-Ei
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 08:14:03 +0000
Received: by mail-pj1-x1042.google.com with SMTP id r67so6282668pjb.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 00:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=kH7Gsic7/bg0PGXSL+3be3VqlczQRKax5zOx9U+HWuM=;
 b=kVW48mio0CxPWT8NRK0h9rM+H0E+lJk45OadqD1q3A2FXxVjDqzOZbllQT7+ccmysr
 BfRrDbfp3ITIofu8FGZpwA11dohikoGpeaPjhA/tlFpUnLzoJF0q/zfy6F/HHfikTRV8
 Er1gigp6754hx5mkwDMtwO+0CtsaF46yDSpXU+Fje6CuKtjye6T3PmON9Hc3YmTWKViF
 mV1FdCZKqqHaSsyr3glVBzyFonQtR5mgJ3zNxT9HmpZFyW+0eJaZYFnjqDUM+vNYxS+c
 EW5q2J4uvtcJHiHcnwgBxtXfHSLher7wmrSx5HdcBVO9FHkpzdyeK28PoC+kFe8nnxkL
 LPRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=kH7Gsic7/bg0PGXSL+3be3VqlczQRKax5zOx9U+HWuM=;
 b=q+Ktlmb0PhLZRGeqQqbzHoM6nIxnwg2I9qFHGzXs+1OGRQ8fOA6HhQSu/CLdR6GT2q
 5S/DFdrlA80pogbKsbL081/dN9wOp/gfXJR6c8FtsjJwkbZ9VUEkFGpc6P5Rdb4JHO1T
 v6BRrFFC85T7ta6Nc3RVBSUymqsLuOwvbRFpvceiY1/c4a6MGbSdMTKQl9wTZICTjMpj
 z7wLoyQguLPiO685EbTJzu/NGFIp/EW5V45inU2w5vBqVLk3/+xLI2uurEH0wX95vKjp
 332ja449Y+FF5LNr8HHUuln48UCeG2JPqWfvHSFp8USxOJKQpoIgnIDaMlkri/Dz3n9S
 RX7g==
X-Gm-Message-State: APjAAAWwUFlmZjogFXmRSeZe+qzRr92BmEjUtnzczSqrXb0489n4+YE2
 dnvDgvoVn3nPJ3QEDa9K6QAcd23P
X-Google-Smtp-Source: APXvYqwrkEWo7fHTgjsGyIpPdgK1rTqGkHZpcNcDJG7MF/f2DYFs0T3u9sGFqZvbEuKrw8DFU1x7vw==
X-Received: by 2002:a17:902:7c0f:: with SMTP id
 x15mr61051120pll.267.1578212041180; 
 Sun, 05 Jan 2020 00:14:01 -0800 (PST)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id y6sm19070688pjy.1.2020.01.05.00.13.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 Jan 2020 00:14:00 -0800 (PST)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 17:13:01 +0900
Message-Id: <20200105081303.1952-1-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_001402_521527_59163193 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 0/2] Remove mtd cfi_cmdset_0002 status
 check patches
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
Cc: Tokunori Ikegami <ikegami.t@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The following commit changes are mainly applied into the linux kernel upstream.
  https://github.com/openwrt/openwrt/commit/ddc11c3932c7b7b7df7d5fbd48f207e77619eaa7

So it is not necessary to remain current patches and remove them.

Tokunori Ikegami (2):
  ar71xx: Remove mtd cfi_cmdset_0002 status check patch
  ath79: Remove mtd cfi_cmdset_0002 status check patches

 .../403-mtd_fix_cfi_cmdset_0002_status_check.patch | 62 ----------------------
 .../403-mtd_fix_cfi_cmdset_0002_status_check.patch | 62 ----------------------
 .../403-mtd_fix_cfi_cmdset_0002_status_check.patch | 62 ----------------------
 3 files changed, 186 deletions(-)
 delete mode 100644 target/linux/ar71xx/patches-4.14/403-mtd_fix_cfi_cmdset_0002_status_check.patch
 delete mode 100644 target/linux/ath79/patches-4.14/403-mtd_fix_cfi_cmdset_0002_status_check.patch
 delete mode 100644 target/linux/ath79/patches-4.19/403-mtd_fix_cfi_cmdset_0002_status_check.patch

-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
