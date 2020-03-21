Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E8B18E171
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Mar 2020 14:06:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xT4lhNARQ87K2bYfHcYBl93chSh2cgzActykeMFvKFE=; b=vDD1nNti4CMJPM
	VxNvlSghsAn0LB+8mUppKm3gF6KeGvFYPi9faB611QxStYIYsha9L05nhoSZllzWvdJ+ihpaK2Aua
	vAskxvUtCz332UBpSmJFysggUNW0/lzxC6tqh7O69GEPGaxk3/G789pXGsqfeAoMI036ps8AI0Rlt
	V1AV3E3hQ5BU1StspRc2QqJT7i1FqsrY4Cp3+EcemBKkmSjwr3zMSZ7RGXsfCYcywc4P558gPA4fh
	B68vBI0H6CtWEyaIAHS0jQNzqfvA++GBJpn6MX4hFuYIlY/6/AqMWgIKLVSFvmvHRxM11N1/X6eK8
	21OIK6enMTpGnZowjdYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFdq0-0000po-GK; Sat, 21 Mar 2020 13:06:52 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFdpp-0000pE-Lu
 for openwrt-devel@lists.openwrt.org; Sat, 21 Mar 2020 13:06:44 +0000
Received: by mail-lf1-x141.google.com with SMTP id s1so6642170lfd.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 21 Mar 2020 06:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gSKuNYxGnOfiUgIFsY8B0haOTZOmv2TKBCQ6kyiD4Qw=;
 b=zEOOSXqyCBAMkOAIg5LVREKN/ELeQ0NBNI8WJj4YS5kUDfQbvPVyQvHn47DZ/lnWzH
 Ik5xUGAgREg0VVqICpnngLX0dMOHnLpfCyLY7I8xEfL+3e+mwbJtiUBK8aJbRaSHT4S7
 N/Yydglj49OnR3VURtC7aKocJhcmcarZwOhDStIchm0Gse5SoGMBwMJjVU4G9Fso1Dhq
 Mu4z0zwFDvwRNOwOtGbghBViuM95sF0UoW6sWjurZoSkpqYfhwpwpgqr1b60ihNA+Ocq
 kGLnCrNxtuZgnyl7UXqPbByiG04FLbvCHePi7XR7jSlJnLVRzSl8UMn278DXWdaSerlh
 7MuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gSKuNYxGnOfiUgIFsY8B0haOTZOmv2TKBCQ6kyiD4Qw=;
 b=rtcYbjigc1haWDWaMZdvOW3HvFshVZOndnTsuTFYu1JvsiGgJox+t4UVZdz1RhXTpm
 gSDx8JdvLcd5qboe8D7qMAKjCDB0HdHNL+LDBI2TnnzG22QWwr3UeWSwbVzlXTIOh/Gg
 LK9qdlmLJcWq9q1Ak1vZ6/VZ50bXZg5HzLop8yHCog66iHhqO+gxR8JdvpbjnWUoSRsp
 QsDd/FiNFqTX7lV5myZbKYZe7wd4ReD1/tyKDRX42sDE+xmn/Cc4K8yvBoEMtmW3hORu
 UHbDnkRZ6mzBcZ1ITTSUFNbzMI4i8OpF3CEo8LOZKPXk+GEkpntkPU9uBZvz1a+OZT4u
 3cyw==
X-Gm-Message-State: ANhLgQ2gQclzKisgR1oPYkPRYQz/Zekogx+r6vielKwunohctgmz+iBr
 7UXeShQNKbacDVIo6cQt1vkI1A==
X-Google-Smtp-Source: ADFU+vtDmV0jf0oOtHPxNuNZ0m0ab4xspIzoBP+ZwEeVjtjvsWFS5MH1bDnoQZ7HYIv5oSDjXd5gTA==
X-Received: by 2002:a05:6512:31d3:: with SMTP id
 j19mr8113902lfe.178.1584795998554; 
 Sat, 21 Mar 2020 06:06:38 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-5ac9225c.014-348-6c756e10.bbcust.telenor.se. [92.34.201.90])
 by smtp.gmail.com with ESMTPSA id i18sm5403611lfe.15.2020.03.21.06.06.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 06:06:37 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Sat, 21 Mar 2020 14:05:52 +0100
Message-Id: <20200321130555.30053-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_060641_748925_25A8E5F2 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 0/3] Bump the Gemini kernel to v5.4
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Sorry for taking so long!

Now that so many other ports have switched to v5.4 I don't want
Gemini to lag behind.

The v5.4 kernel was tested successfully on D-Link DNS-313,
D-Link DIR-685 and Itian Square One SQ201.

Linus Walleij (3):
  gemini: Add v5.4 kernel patches
  gemini: Add kernel config for kernel v5.4
  gemini: Bump kernel to v5.4

 target/linux/gemini/Makefile                  |   2 +-
 target/linux/gemini/config-5.4                | 489 ++++++++++++
 ...t-fotg2-add-Gemini-specific-handling.patch | 131 ++++
 ...-DIR-685-partition-table-for-OpenWrt.patch |  37 +
 ...0003-ARM-dts-gemini-Rename-IDE-nodes.patch | 117 +++
 ...s-gemini-Add-thermal-zone-to-DIR-685.patch | 101 +++
 ...ta-Assign-OF-node-to-the-SCSI-device.patch |  86 ++
 ...sfs-attributes-for-VPD-pages-0h-and-.patch | 122 +++
 ...-disk-and-solid-state-drives-with-te.patch | 737 ++++++++++++++++++
 9 files changed, 1821 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/gemini/config-5.4
 create mode 100644 target/linux/gemini/patches-5.4/0001-usb-host-fotg2-add-Gemini-specific-handling.patch
 create mode 100644 target/linux/gemini/patches-5.4/0002-ARM-dts-Augment-DIR-685-partition-table-for-OpenWrt.patch
 create mode 100644 target/linux/gemini/patches-5.4/0003-ARM-dts-gemini-Rename-IDE-nodes.patch
 create mode 100644 target/linux/gemini/patches-5.4/0004-ARM-dts-gemini-Add-thermal-zone-to-DIR-685.patch
 create mode 100644 target/linux/gemini/patches-5.4/0005-libata-Assign-OF-node-to-the-SCSI-device.patch
 create mode 100644 target/linux/gemini/patches-5.4/0006-scsi-core-Add-sysfs-attributes-for-VPD-pages-0h-and-.patch
 create mode 100644 target/linux/gemini/patches-5.4/0007-hwmon-Driver-for-disk-and-solid-state-drives-with-te.patch

-- 
2.21.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
