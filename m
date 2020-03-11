Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 205D6180D17
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 02:07:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6mvIUfc9dxExgaRFDBAWsvtHkvFN4ZXw3FZ0cti1z0=; b=FOsI8Bxv3/SLMe
	kfm1iqK0mgKjIXMTSJUgQHegT1eKWb4VURH7aSQjYDqH1gpOPndFXnMteLLWBCWOG3IL+3/aELPnU
	SfTy/Zn/wA4coRxcxgCLfGYAa9mxKCrGM1OGeRWvN69XaVvQRls3P1EgZAUAbpaI7cP4X0loj+a7/
	/s2Vs1J5TG42cuFlIxSKgxhtsZoLSfYv+d1JAJFvWkiCAvXmeAR7tEQ6/p7/JAsttosRlYY7gVWI2
	OIh6RMrKysdxB7zbLLaLYEyzYE73agMbxIq113lkbELd/Lao1eXJGUyDQrHowwE3I1JxJFI2SeBx+
	QjX5ngH73bgdovl8RWWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBppd-0007Xe-3z; Wed, 11 Mar 2020 01:06:45 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBppV-0007X9-LU
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 01:06:39 +0000
Received: by mail-pl1-x642.google.com with SMTP id w3so257366plz.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Mar 2020 18:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oZdMsu8jZqHjxlnLxoZfDrTrqUEoJ1RMzfy1tLLhPyE=;
 b=d+m5Ti5isT+qysn+vVRUmtZi7oV/Op8L8kWziwkZFyD5OOcSXyXkzhpyE3tYSS7Gce
 MMtqlJiN/QiZl2JsPLH/4zOrdobRckQsjF2+lSI1BecYce1zmXoMrNmov4T7RPSLdwPC
 hEr+4IsECWK/A6b67PIF2nO1Z6/YDFzS3v7kHq3PA9/gS7Bo723Y6K9JiXQ006KXofKD
 nKrhW3OQkprx6crob2kz2dH0YGVNiFg6MMKrKE1rpoIilbCf2l2dWOOC3O2Iw+JMWpLx
 qd5m/CKL3CPQfYrhCtc+Gq12vQI57/WXJl0QTpkmJwesZL55tlMVvA+A0IOTFJhGQQDC
 3f1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oZdMsu8jZqHjxlnLxoZfDrTrqUEoJ1RMzfy1tLLhPyE=;
 b=iGRPoUWf2QX5wygkxADHGLuINTNm5EpG7aJfCJQLlaEQ/GcO201HBY1KjyF0839zjQ
 KS5bOdbR4bKRQkrC0CgWcIJuuNVgujk4UGPB7jFsPj/fZuGG9JzfReQRFJqawz4E3C4c
 LWvad+Qg1vJ6RFL4DzTAK/apsxX0M0Y78oIBV6ccyniwzPsglXRW7n9OspXjd5sKyen7
 pa6SW+Z7ggDRIu0uK+dAEmXqNdn63oXrVYW9G6rR6EKpwLNASzORzT1dk/XIF3Gp57dF
 CZDmhlzB88JF2V4BkTpBCbnCsWEESI/vjZMkhQ+wuh6/UMRtLTmTzH8ByLYop/uB0nP2
 PSqA==
X-Gm-Message-State: ANhLgQ0jlOL8mSQFI8+38TursuHHY4isESx5XoSHIg62tlWM6yu7vyZW
 KHRljw+SBRj4+pn2UkgzgEdGBbJfB11mlQ==
X-Google-Smtp-Source: ADFU+vupUJZGi27XWuwOdF5Qs6jaW8cQfXdsqJMUGesI/plfnQSYqZ8g3ozU//hlkR2/pSXRqqLy1g==
X-Received: by 2002:a17:90a:a616:: with SMTP id
 c22mr727663pjq.47.1583888793278; 
 Tue, 10 Mar 2020 18:06:33 -0700 (PDT)
Received: from hawg.ptp ([2602:3f:e4ac:bf00::70])
 by smtp.gmail.com with ESMTPSA id m18sm46353680pgd.39.2020.03.10.18.06.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 18:06:32 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 10 Mar 2020 18:06:01 -0700
Message-Id: <20200311010605.2818827-1-russell@personaltelco.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <87tv3dtzut.fsf@husum.klickitat.com>
References: <87tv3dtzut.fsf@husum.klickitat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_180638_124264_150632BF 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v4 0/4] ath79: add support for the ar7240
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

This series aims to support the AR7240 version of the ubiquiti bullet m.

First it reorganizes the associated dtsi files by making them generic and usable for
both variants. Second, it renames the existing bullet support to be the existing 
AR7241 variant, along with supporting changes. Third, it adds support for the AR7240
variant. Lastly, it applies a DEVICE_VARIANT variable to the XW version of the bullet.

Russell Senior (4):
  ath79: generify ubnt_xm dtsi for ar7240 and ar7241
  ath79: rename ubnt_bullet-m to ubnt_bullet-m-ar7241
  ath79: add support for ubnt_bullet-m-ar7240 variant
  ath79: add DEVICE_VARIANT for ubnt_bullet-m-xw

 .../ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts | 22 ++++++++++++++++
 .../linux/ath79/dts/ar7241_ubnt_airrouter.dts |  3 ++-
 .../ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts | 15 +++++++++++
 .../linux/ath79/dts/ar7241_ubnt_bullet-m.dts  | 13 ----------
 .../dts/ar7241_ubnt_nanostation-loco-m.dts    |  4 ++-
 .../ath79/dts/ar7241_ubnt_nanostation-m.dts   |  4 ++-
 .../ath79/dts/ar7241_ubnt_picostation-m.dts   |  4 ++-
 .../linux/ath79/dts/ar7241_ubnt_rocket-m.dts  |  4 ++-
 ...r7241_ubnt_xm.dtsi => ar724x_ubnt_xm.dtsi} |  5 ----
 ...tdoor.dtsi => ar724x_ubnt_xm_outdoor.dtsi} |  2 --
 .../generic/base-files/etc/board.d/01_leds    |  3 ++-
 .../generic/base-files/etc/board.d/02_network |  3 ++-
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  3 ++-
 target/linux/ath79/image/generic-ubnt.mk      | 25 ++++++++++++++++---
 14 files changed, 78 insertions(+), 32 deletions(-)
 create mode 100644 target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
 create mode 100644 target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
 delete mode 100644 target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
 rename target/linux/ath79/dts/{ar7241_ubnt_xm.dtsi => ar724x_ubnt_xm.dtsi} (92%)
 rename target/linux/ath79/dts/{ar7241_ubnt_xm_outdoor.dtsi => ar724x_ubnt_xm_outdoor.dtsi} (94%)

-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
