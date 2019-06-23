Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F3D4FAF0
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Jun 2019 11:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zvn0vrAQ2zASbCGzu3saBXGvWw/HwPV6sBqQGSrBPf0=; b=A+m06zc/z2Vxpq
	f4BiYSZGM7V13lnIpkpR7RqODG74tyMjsAeq03upgdLwaooVFB5PE0RXYIcTtOo/jL4AoEiU+0vz7
	lN7ruSXxTTef9/U6HrlETW0H6qBc2cAD66bN+xxOR2REVj77sdgHEJl5W711Ld67QDj0aIbxb/90g
	vvIyEpZfPjVF/S21LkyAvVKcBcRPgi2zJXBWrAVdNB8UIMx0cY+PBJP4zhtXKDc+i5emp2n7e84nT
	CGnAL2jLLxRPieGmq7wczd/EWW3lN6U3dsw72Vj5YEhcrXax65S8KUzuz4SVqBkRCwLneIJ3qVdb/
	S5vs3Sqz6K0m+Skq0USA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heykN-0001ij-3Z; Sun, 23 Jun 2019 09:25:15 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heyk1-0001i4-Uv
 for openwrt-devel@lists.openwrt.org; Sun, 23 Jun 2019 09:24:56 +0000
Received: by mail-wm1-x32d.google.com with SMTP id w9so12038798wmd.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 23 Jun 2019 02:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fnfjH3Jjq6sX3nwWgT82uuyib5piLn4cQEqRfCn7yQY=;
 b=OJgjDoW8Iw8H1aDLyUSVG4DuKdK9zlmla2zylBwXz1koyd2QUbdz1IRB8mBWPXYZtd
 ZXov6usJTyC+lpktUn9dRR5OzR0vu/a2sxKwGG6CzNWZfd/qgg2rnlOUnm5HuXHUf5dD
 YTiIQWJbmjmV1QvkEOcU9ZwOzFQW7Y7rdidn9g4xaOiK8C//Q8Z9kGjEJ8euAAXz9C67
 93qOao/J93IQuFvHOfzJzIDvUlmrnfY9JgCbFChopMH6zvY0AShAetgC54eQFcB1dkFB
 nLHjPF8VwAZMoFyW4UCYOY2/NSFwkHC2Ah9mVSy17SkYoc8S65K9LYx1LxX21Lpq7HAP
 Ti5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fnfjH3Jjq6sX3nwWgT82uuyib5piLn4cQEqRfCn7yQY=;
 b=kxVwPkmhtut5JyzJCwhAsHjOdBvsSreH5z4HCrigvgiAzQoC3PfFg9IQAS1COD9GVm
 bYHkRlLteE194R1gm6IF7E4nWh1gAIiiyNTDklVbliTnou6tJQ9WnvK6mI6eWHCzofS6
 wHv2wWcIWP/MvI0k9SJgw6c8QOHCBcbGmkahDOY7+w7cYq4ZNY2JgPtsJdEl73scqNCa
 WMg06Cxj3LumHCW0BC3KNDsZgHcvbRRZt4FrfA01nl8WMk0TFS2T6E6C9zl9Bg/z/kXU
 MKb4morfZuIqjYcYZlGg+LL0YgOBXgR5F3MltalNrlfGN+beJCxVfdXyzw+hbhJLZ89V
 83FA==
X-Gm-Message-State: APjAAAV+2UVrBf48kT4xSs2H2b6ZL0/WSoXFiLTYcXw3XeAOQU1LGymQ
 w4HG4eSgBav4kJwfLN4YbvMUWO8j
X-Google-Smtp-Source: APXvYqwTScwWdCiTGvx1/uAbPx5z7XCYwmx5slVHOi6x1606t/6PtdRJ+yi26tT8+4t+Epk8jiOJaA==
X-Received: by 2002:a1c:3c8a:: with SMTP id
 j132mr10966174wma.172.1561281891035; 
 Sun, 23 Jun 2019 02:24:51 -0700 (PDT)
Received: from kristrev-XPS-15-9570.lan ([193.213.155.210])
 by smtp.gmail.com with ESMTPSA id w7sm3388292wmc.46.2019.06.23.02.24.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 02:24:50 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 23 Jun 2019 11:24:46 +0200
Message-Id: <20190623092448.27880-1-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_022453_997524_17D37497 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 0/2] Add support for the ZBT WE1026-H
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
Cc: Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch series adds support for the ZBT WE1026-H, an outdoor AP with support
for adding an internal LTE modem. The first patch restructures the DTS files for
the WE0126-5G slightly and adds a WE1026 DTSI-file, containing descriptions of
the components that are shared between the WE0126-5G and the WE1026-H. The
second patch adds support for the WE1026-H.

Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>

Kristian Evensen (2):
  ramips: Update ZBT WE1026 DTS-files
  ramips: Add support for ZBT WE1026-H

 .../ramips/base-files/etc/board.d/01_leds     |   5 +
 .../ramips/base-files/etc/board.d/02_network  |   3 +-
 target/linux/ramips/dts/WE1026-5G-16M.dts     |  77 ++-----------
 target/linux/ramips/dts/WE1026-5G.dtsi        |  93 +---------------
 target/linux/ramips/dts/WE1026-H-32M.dts      |  14 +++
 target/linux/ramips/dts/WE1026-H.dtsi         |  41 +++++++
 target/linux/ramips/dts/WE1026.dtsi           | 101 ++++++++++++++++++
 target/linux/ramips/image/mt7620.mk           |   9 ++
 8 files changed, 183 insertions(+), 160 deletions(-)
 create mode 100644 target/linux/ramips/dts/WE1026-H-32M.dts
 create mode 100644 target/linux/ramips/dts/WE1026-H.dtsi
 create mode 100644 target/linux/ramips/dts/WE1026.dtsi

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
