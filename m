Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483436803D
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 18:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RrEPG+c2DALQeD2Onf0cqYCOelyCR1ypgb9HtS/t9dk=; b=TAI+uMYz0xpG3o
	d0TrQ3uelW5W8viQ2NWRa2Xa/k9VVYv4tXDRDdYO+N9VjV+t49ejw0Fun1oEZQfXGzgx6vm0Ye2Mr
	M4HrJj9+ywYTT/sP77Gl0mBEVxmQb1ZMZK36edH6sngJOAYc7DV+ASl85qqMW4Hu/0PieJpvOF85m
	UWUxvijw6def1bNbShIIvliTuQGcVI6YoU4UfojIXGXW+3+WYSSYsIjvQ4PD2V2DcvMx/lc5BVnbI
	kng9BDHjjgWd5a9cnNAce4kItFq6Tuk2NmitRqiLDR67msUi6WbwLpyvak5DIK8Dmn84/CpC+nY1m
	oy9EMK8ushQntMTDTKXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmhT8-00081K-Dd; Sun, 14 Jul 2019 16:35:22 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmhSl-0007zr-GY
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 16:35:00 +0000
Received: by mail-pg1-x542.google.com with SMTP id i8so6565924pgm.13
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 09:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0rD2ibKAre+rvMKufybK+kRnhxXg6OwHDGLNTOWXE34=;
 b=jWjTvfSYK+RywgJsJPgghbJlMZ2wUix7WfduEO8Qu8dSSG81g4N81qd4X7d9Z6fAHC
 zpxYLF7Xh+DJWIDO8kIdtZnyDwXDQ9zM1Qd+zbPPPY5tgtO0uwe04hdhkP+NkUaHghsW
 7wgJ3mdWabUCbXJA1/M/v/MdJ3eXEGdjqJNb32QlosQcZDQaSXhQB1PJ1zZTt97BJsZs
 2bZajgjltwSI/PJn3tHa/2hw5r5l3Gkdv08clqCqf0JKnkZQqXHBUDW6jg9pMmYY5RW7
 uLppKaDT4evK14POaBc65Vspc5prpYaHSES8nQgrGPmM2VRwlTCgZ1HXWQxKeaX3guEc
 J+cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0rD2ibKAre+rvMKufybK+kRnhxXg6OwHDGLNTOWXE34=;
 b=pj+wbnbB1qeIdHhq4GkhmVHHqpZYR5r0FYWhfXQfP6Fz+V73lPkFsp+8IcqCHyMYr4
 iB/bw90uJso7yHM0Ti/EgA/0UTWs3BewhgMh0JsyOCxqjAydt9ZriYNXB1KOKX3QfWMk
 yrMuWUfEgWjGAV8WckAzHHSogUDmSKM1c/5n6MJ6W8ZWjXncdECU07mp7lW9omboG3VL
 P5Ezqj1viTz+qDLlV4JMMfr2ke7t33cWr+PnEKOBt07By0zEAaQkVt2dN210IekH4r7T
 n81ay8Cm+gs1QBpO+cenTqKvZke3+8tZ1RhBhpQdOg8PgliBd+8xa5EEWuW5zRyXAml2
 X3ZQ==
X-Gm-Message-State: APjAAAUssRz4Ne8AdeOcywUX+J8L7fEXs/nhfr7LPHswerSUV1sNxE8g
 L1dYy9YdweAXW5kgdzqpjHEiPB+SDRE=
X-Google-Smtp-Source: APXvYqw3qc2BjvME6+e8GHXB9SPuZkwdZMBlXaw77p/IShv2baYpu8VTyxBxwKyBBudTFc+w+kf8gA==
X-Received: by 2002:a65:518a:: with SMTP id h10mr22041712pgq.117.1563122094444; 
 Sun, 14 Jul 2019 09:34:54 -0700 (PDT)
Received: from guoguo-omen-lan.lan ([27.155.236.112])
 by smtp.gmail.com with ESMTPSA id d17sm505805pgl.66.2019.07.14.09.34.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 09:34:53 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 15 Jul 2019 00:34:25 +0800
Message-Id: <20190714163428.26303-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_093459_577872_E7A956FD 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH RFC 0/3] ramips: fix SDXC for HiWiFi HC5661A
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

Since mt76x8 ver1 eco2, SDXC pins can be switched to the
following pinmap:
sd_d1  -> PAD_I2S_SDI
sd_d0  -> PAD_I2S_WS
sd_cmd -> PAD_I2S_CLK
sd_d3  -> PAD_I2C_SCLK
sd_d2  -> PAD_I2C_SD
sd_clk -> PAD_GPIO0
sd_wp  -> PAD_TXD1
sd_cd  -> PAD_RXD1

To use this pinmap, one would need to set ESD_MODE bit (bit 15)
to 1 in GPIO1_MODE and switch other used pads into GPIO mode.

HC5661A is a router which used this pinmap so that all 5 ethernet
ports and SDXC interface can be used simutaneously.

I think this patchset is kind of hacky so I decided to send it here
for review/suggestions.

Chuanhong Guo (3):
  ramips: mtk-mmc: mt76x8: check ESD_MODE before applying AGPIO_CFG
  ramips: mt76x8: pinctrl: add a hack for ESD_MODE bit in GPIO1_MODE
  ramips: enable sdxc driver for hc5661a

 .../ramips/dts/mt7628an_hiwifi_hc5661a.dts    | 17 ++++++
 .../files-4.14/drivers/mmc/host/mtk-mmc/sd.c  | 12 ++--
 target/linux/ramips/image/mt76x8.mk           |  1 +
 .../500-hack-mt76x8-pinctrl-esdmode.patch     | 55 +++++++++++++++++++
 4 files changed, 77 insertions(+), 8 deletions(-)
 create mode 100644 target/linux/ramips/patches-4.14/500-hack-mt76x8-pinctrl-esdmode.patch

-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
