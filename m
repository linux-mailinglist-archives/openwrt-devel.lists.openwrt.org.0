Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 533F918B250
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Mar 2020 12:29:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sYdqm7qoRBuPFDwT6/4iwgcJpIQ3OhAe2N+7LPeprA=; b=C/jYVSFf20ura+
	mD1+/C4x9noqwykHp5pBDBsFffBy33BysLZnE3ycHoD1ptwlDdhFX9c19O5RgMEeB4bDK3kLwm+mm
	GJaC5LCQuB3Ski4iNFNaLEk+UdQFLhBZhhrgIHHsy2zd7JIb7TAGuT8+ttxIn97YSDpPx3Mh4LTet
	nICFe1Vw9GLBAK/a+CPCPB8bs+stqDwqHFb/8PWxXNkCxZzYTnahWkjXn0Lzz+lQYd1gAaQc/JzXi
	r3y7UUW3yh3AX0MBKk7/gy6o9Xj1l/uvbeBwXusu+4OFKkF7YAqJPj60fFLKHJpv61auSVekzu4VK
	CpHU7v7N1poa2Lw7P0hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEtMw-0005q6-Em; Thu, 19 Mar 2020 11:29:46 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEtMo-0005pD-DM
 for openwrt-devel@lists.openwrt.org; Thu, 19 Mar 2020 11:29:39 +0000
Received: by mail-pl1-x644.google.com with SMTP id t16so932957plr.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 19 Mar 2020 04:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IpHqOItpMJFfDuXZSDAiVD5xpAzhDXz260DhTvTL9JY=;
 b=kiu7gZUrzxDy/vkZ+3gPe+kOtYVHqqrzGtyFzaw6xEmm7BnxptcKkKBddrLV8BM8BB
 fNATkoz5EdbCdID+A5W/ckZH6RTKbLX1aelofLIyebOxCbczXn+vuxW7o1JW7+1JY/3l
 9JYVDEVAHCaNJmTQSAg1Y1dbnMcFIEOgIC5F/Z7IcgUKnSka09tdAnbk1Rc92e0wogvw
 KFL2RGqZ+IQEKu/33FgJ1z643WuQNhUJ9b6Bu2ksqkdcngr80fuwGUxqR88MCDc5MSt+
 E5al4B2TuGA1pkD9VaO+duLWiVitRGmSHZk+u6nVb+lNVw3wfvf1HadMqL9gt2on6UMP
 FfoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IpHqOItpMJFfDuXZSDAiVD5xpAzhDXz260DhTvTL9JY=;
 b=DPX1EDyeRmACckT6joBtwz4Z+MVjn+w+x2+NS4XAmYLZvsRaKJFvdRqmsKYWzB/tLK
 vzijwShLw+QhAmiIJnUfontTb+EVACced5bo7CNIR5O+rQgqnn7ch9nGDNceRQzZpDPb
 FYFeYm45ZfpDzSNgTK/V1A4IIwOHbOHJD0Se+QdydK2Sk2oxe61TcdiWckmyczithopG
 m64wgBNZg5XsAAUj4b/siWQzT56axjos4h/4uuWUGax2Qtn425qUNqQRfQhxnB+uoHcr
 6h39wPVxl1A6SLBAFx1Smamg0KAi4tgWWHNvvEHFWxH9OZKNbs/VNtRRdIqF/Npso2e/
 hAKQ==
X-Gm-Message-State: ANhLgQ2I9RRf9uR3WYFHCcxSEiRF9O8QyARjNd1v9tXmkQ9cHE2BmDzV
 70P9n5bg8V3fMImee96Ps6uq/3zJNh4=
X-Google-Smtp-Source: ADFU+vvw38qvdtmJlVA9S2GmwaY00woui8P9Laf2fIkcxlvVG88oL023mogukgIznnNUwDIX6Ox4OQ==
X-Received: by 2002:a17:90a:d104:: with SMTP id
 l4mr3314059pju.60.1584617376702; 
 Thu, 19 Mar 2020 04:29:36 -0700 (PDT)
Received: from hawg.ptp ([2602:3f:e4ac:bf00::70])
 by smtp.gmail.com with ESMTPSA id k4sm2370782pfh.0.2020.03.19.04.29.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 04:29:36 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Mar 2020 04:27:27 -0700
Message-Id: <20200319112727.4016569-1-russell@personaltelco.net>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200311010605.2818827-1-russell@personaltelco.net>
References: <20200311010605.2818827-1-russell@personaltelco.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_042938_603151_7CD6C0BB 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v5 0/1] ath79: add support for the ar7240
 version of the ubiquiti bullet
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
Cc: Russell Senior <russell@personaltelco.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

since v4:

* patches 1/4 and 2/4 were already merged, so dropped here
* add the second ubnt,bullet-m-ar7240 to the 02_network file, previously missing
* modify the board naming as requested in device tree
* justify the device tree "fixed-link" section in the commit message
* drop the unnecessary XW DEVICE_VARIANT patch

Russell Senior (1):
  ath79: add support for ubnt_bullet-m-ar7240 variant

 .../ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts | 22 +++++++++++++++++++
 .../generic/base-files/etc/board.d/01_leds    |  1 +
 .../generic/base-files/etc/board.d/02_network |  2 ++
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  1 +
 target/linux/ath79/image/generic-ubnt.mk      | 10 +++++++++
 5 files changed, 36 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts

-- 
2.25.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
