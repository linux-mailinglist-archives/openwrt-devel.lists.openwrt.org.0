Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 553A1178D2E
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 10:14:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jD7YbaF3jIhQjxf/j6YR2pkydQooN+54ziRgcZ/2dwk=; b=D3RxNRUergoVSC
	m9z5a9wGjVMRWp/USrxFnTGMp3CF2PekWgpYWwMz0RQKOuYtAUJlh8drbP+iHo185QmbznocMN4ix
	JzxmxVcszu+WuIEA1j66g+x2GGwL3LVV0NOHr11KTlx1vlbSzg61spjofo7LphjqDtVn7olJHUqgW
	QkOduZ+goG60zA2AB8seobYEDD3KLljE23kLiW1khol+k1Z8Q0Y9rxK6QE7uLzKmmBJ68+TyLdVW7
	SfVN1v7xJ53abXt18ieB7h1AP5d5rsMYXR8FLz16vZqedlmjva9uueUbWmSgAlXpWUEO2Go79LqGw
	AkkjwHm+BJGYYqi3tVrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Q6n-0003U3-Vm; Wed, 04 Mar 2020 09:14:29 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Q6g-0003TP-U3
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 09:14:24 +0000
Received: by mail-pj1-x102e.google.com with SMTP id d8so666187pje.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 04 Mar 2020 01:14:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YKgO/1D5+5V5PUFTvl/tBpaQNb6kgGd8bEY8IGUjg7o=;
 b=Np95jwmVAT2mjiNpiL5WB7hij46ZRgCtmCiXhrKHt8GGJV0kuNYRTJxhEbrkILzyeu
 60pRIW0vgc8UYYVyFQ0dVC1t6DpkqyjbTGWrddwPURnpJRCsUs1blBqWqElU0kcL5C+1
 REyjLe/avF5vxA5Gu6ivSwt82ZL0Rp+4JYPPHLi6uEuQfGmqkIgGpCJNPlx5rt/5XIOu
 KoWdG0ItIo8nk9pQ4EsUeswUaEbc6x0HBur0daxHtFumD/Nw1Gk+ZMiJD4yw/6jc/ouH
 sXxQWowx2mlbcxFiNNOUrZGlm4xKXQaLW7Vzoy2YATQoZQ0EpQ8Wr2/KaNhLVzKe3Cui
 32Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YKgO/1D5+5V5PUFTvl/tBpaQNb6kgGd8bEY8IGUjg7o=;
 b=ZThS8bcKdVvbh2kGgoXueQ0GQfSNXIfMVmUFxfe4kzDeRBfZsuixDVIx+VOGEJODJ9
 Ea4aY8ROouLVlWMfNPhefzbxbcrxRBeFLwrd1x6c9Hmm1ZA5iyDoi8wVMaBeZOWdVECN
 npSwIs1N3+U/XvLYTlNTBfMTJjWPEXprGmYGPxqQ/sRdJ89ddKW3AdpSiCsptNJYc1NY
 b0DhueCEqQiX0IETCDahdtn+dDJQ0bPBGxtVVRv8lWuUABYyXiyu0cuXWbdDIbgdn/5R
 pv1sB8yoiNVhi4DQfR7ujt1sWzuPR9g6nKTBU+W6HMo8LVIKu4wE5Y9HAjGJUwv6C8tb
 QVfA==
X-Gm-Message-State: ANhLgQ1uHk4WL5T5vasLTkwdxak8WW4wVy3CE78AnOUkKOw/mYoscWJP
 2DePLC55Anqn2N9GrL3RB5q6qTzfGrQ=
X-Google-Smtp-Source: ADFU+vtv2Fk5W1TuVtHswhN1zTuY0wt+1uua271sXjBAfHJb86Mn7J6VK8t0BiCMuRmecYSFhzzvJg==
X-Received: by 2002:a17:902:be08:: with SMTP id
 r8mr1827228pls.321.1583313261216; 
 Wed, 04 Mar 2020 01:14:21 -0800 (PST)
Received: from titan-10-168-222-196.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id u7sm26969477pfh.128.2020.03.04.01.14.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Mar 2020 01:14:20 -0800 (PST)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  4 Mar 2020 17:14:03 +0800
Message-Id: <20200304091407.14821-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_011422_992329_1CA5E082 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yszhou4tech[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 0/4] malta: kernel 5.4 support
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

First patch in this series tries to move some common 5.4 options to
generic config.  Then it moves on to switching malta target to using 5.4
kernel by default

Yousong Zhou (4):
  kernel: 5.4: move some kconfig options to generic
  malta: add kernel 5.4 config
  malta: update kernel config-5.4
  malta: switch to kernel 5.4 by default

 target/linux/apm821xx/config-5.4        |   6 -
 target/linux/ath79/config-5.4           |   6 -
 target/linux/bcm27xx/bcm2708/config-5.4 |   6 -
 target/linux/bcm27xx/bcm2709/config-5.4 |   6 -
 target/linux/bcm27xx/bcm2710/config-5.4 |   6 -
 target/linux/bcm27xx/bcm2711/config-5.4 |   6 -
 target/linux/bcm53xx/config-5.4         |   6 -
 target/linux/generic/config-5.4         |  12 +-
 target/linux/imx6/config-5.4            |   6 -
 target/linux/ipq40xx/config-5.4         |   6 -
 target/linux/malta/Makefile             |   2 +-
 target/linux/malta/config-5.4           | 344 ++++++++++++++++++++++++
 target/linux/mediatek/mt7622/config-5.4 |   6 -
 target/linux/mediatek/mt7623/config-5.4 |   6 -
 target/linux/mediatek/mt7629/config-5.4 |   6 -
 target/linux/mpc85xx/config-5.4         |   1 -
 target/linux/x86/config-5.4             |   4 -
 17 files changed, 354 insertions(+), 81 deletions(-)
 create mode 100644 target/linux/malta/config-5.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
