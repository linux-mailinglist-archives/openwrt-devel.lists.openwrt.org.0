Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69676ECF1D
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 Nov 2019 15:19:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NNrnt65TEbEagsfdAJkhJqoPR0/1NdswyPvLe3QxM7I=; b=sxgXHxvkPIPGDB
	wijaGMgvTmc7vtFI2Hp+UENp73LzPg2VVev1iyH1xD/8uEo+QyAqj/apDzX1PZIiGKb2cqnBsliYl
	yY2I6khw/2fJ8oyxXqHXgYpTliPw9elIVMVXQMx5cCGJPD2nEZANitiVxWieBoqwyBRSV5Mp3/AV4
	J6JiiK6LPFUYCCZTlQUQI/NImXFcr82F7NGLhm0jZOEPnW/l37LUupGyR3VVsots78ehQSARikYY1
	nSCfFuDZAz/MLfd9owd2253mbc5eP6OjRoCrNE1b0El6lnyRjN+iDS4mKCJe8n3dyr7EvaRpAtly6
	BCq4CWPdaBiUOIcTzh+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQuFC-0006Vj-Rc; Sat, 02 Nov 2019 14:19:10 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQuF2-0006Ur-19
 for openwrt-devel@lists.openwrt.org; Sat, 02 Nov 2019 14:19:02 +0000
Received: by mail-wm1-x334.google.com with SMTP id c12so7656169wml.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 02 Nov 2019 07:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7YtEm+gvWqtWdiecn4I3AwDjpVLpSfm8t/PzGk7gaVo=;
 b=etCL5Uzem14FACRe16Iv3zf9S0VbRKaTF81KLEgzERoDm3om9KD0TddOROdPwpaXm7
 U8YjDjucym2izvL45ZE/rNmiqOXaN3ha3z1asKrAL7yQD4WjncWx6yV/eqPzjuriSkzb
 D6AveKlVYQuC11NUqfcLWGz4amQL+cvWqVmI49E+ERx6s/1hw2qGGLhbAOjuIHzPVAPx
 +bGMfY9PzZxYJ/WZMBEznmwO84YE1AWH307iz4Acu4WIgLGFZnW3HW67WtPxgucevPoc
 C6BlwQakaZQrxLHBOOhymVjpqXEQ/bH6a65SoyOJcXs6FpvPypVFOh6pNXGrVx0u1Ofi
 IoDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7YtEm+gvWqtWdiecn4I3AwDjpVLpSfm8t/PzGk7gaVo=;
 b=ZixQBABBfYjprq6K+g4lP05fr58wKRL2BEAbArGNrMOxgOKrm18E1Z8ck5xFf8/USs
 iJDK+nLUowwrqdaSi67WlmE8KeDjIw7FDB2BFGypZ/sSTQnZTAdLmLePrxsuM2yYUAED
 Gbiv2KOcIjTJ+E2FZhRZ+YJ15jOcVHJK4VrFKs1jopNHXz2p8VlA8AplhKEvlDdrYVcZ
 GG8w0ajKJPnxqGf/Z6jd+2GcsUBz94JNMLRyOmK4QetnrWNeRXlxPtqbTL3CjZbuyExR
 8DsCMWImEOkK4+GiO+ZqFcwmeENHe7vsvYSGb+a2OVvhdDfvLPjKctdsKo9D6oKOusBj
 JdVQ==
X-Gm-Message-State: APjAAAUaQTHJXSywdPLnR1unxJ4rdekSkYYt8jkjzNNjQQZOR3lWrU9k
 feHqz2YRqEywx47QXR1T1NQ+h9gk
X-Google-Smtp-Source: APXvYqy5w1O2uuC6kaEgQLxUvk5Lf4JCEQr0nFL+EGsiA6rH0jDO/HRjoVIVuNgpWLSe9DkYsGVQpw==
X-Received: by 2002:a1c:f602:: with SMTP id w2mr14648669wmc.83.1572704337552; 
 Sat, 02 Nov 2019 07:18:57 -0700 (PDT)
Received: from kristrev-XPS-15-9570.lan ([193.213.155.210])
 by smtp.gmail.com with ESMTPSA id l14sm11382010wrr.37.2019.11.02.07.18.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Nov 2019 07:18:56 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  2 Nov 2019 15:18:53 +0100
Message-Id: <20191102141855.22192-1-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_071900_076348_D2940257 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:334 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v3 0/2] Add support for the ZBT WE1026-H
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

The main change between v1 and v2 is the addition of acked-bys on the first
patch, triggered by the re-licensing of the DTS'. The changes between v2 and v3
are mostly related to ensuring consistent naming.

Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>

Kristian Evensen (2):
  ramips: Update ZBT WE1026 DTS-files
  ramips: Add support for ZBT WE1026-H

 .../ramips/base-files/etc/board.d/01_leds     |   5 +
 .../ramips/base-files/etc/board.d/02_network  |   9 +-
 .../dts/mt7620a_zbtlink_zbt-we1026-5g-16m.dts |  77 +------------
 .../dts/mt7620a_zbtlink_zbt-we1026-5g.dtsi    |  93 +---------------
 .../dts/mt7620a_zbtlink_zbt-we1026-h-32m.dts  |  14 +++
 .../dts/mt7620a_zbtlink_zbt-we1026-h.dtsi     |  40 +++++++
 .../dts/mt7620a_zbtlink_zbt-we1026.dtsi       | 103 ++++++++++++++++++
 target/linux/ramips/image/mt7620.mk           |  11 ++
 8 files changed, 189 insertions(+), 163 deletions(-)
 create mode 100644 target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-h-32m.dts
 create mode 100644 target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-h.dtsi
 create mode 100644 target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026.dtsi

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
