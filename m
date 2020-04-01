Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D110119A93E
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 12:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rAq6cJAGnHttwyBJonjFRdOujMP1kVgWGn8OmhMvNs0=; b=DQQdnuYGsbOReR
	WdRqjcQ1MDm7swtDyJgJLReTEV/dy7x54tX4wbNxETDXCWcZWi3L4ngc51kEC5Zo/OIrjtf42IsiL
	48n+B6Trt1m4REESFgrOrb8cWSsOlRMIuSwVlB8Oo7R7TaLeBRdLVmSOVR+3GGBLCmlij2b5DBcv9
	23Od39MlRgJX4ruQQMfGQ80EH/uQIIKM+EOZ/f35JyWU5DBYwQiFEqAgThu46kc+y6iEdkXKQ5YJH
	69XDgfCtOGz8FIgJY5pY/ure6W2efBLugE/LdZBg0WnYMwmbLqCLlDljPbc2104yJt+irPKJM3RWj
	DhXQKRLpLidHZVpk6M1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJaOV-0002Ol-44; Wed, 01 Apr 2020 10:14:47 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJaOO-0002Ne-VX
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 10:14:42 +0000
Received: by mail-wr1-x443.google.com with SMTP id p10so29863212wrt.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Apr 2020 03:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ojRL3az03BDE63q3IDYu4nAfd8F3f4wxxwfvT2NHuGo=;
 b=Je0aV0mcEEnt81737KDhx+kiqKG19tuxtit8tvNLltlPWIRJ/guN9HQ/6HpvzdK7Mx
 VdgWxwspvZcPP3OSYTq0WuD6QglFVjB8Orvc5omdhYk6TZcFm+j0m/LOw0kzgZ8fyVP3
 /soteryDLLdRq87AxB7GnJuEJbqV4PCk8gJiI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ojRL3az03BDE63q3IDYu4nAfd8F3f4wxxwfvT2NHuGo=;
 b=dq4MyJWoA+7gijuIYyUnAin37YK1TjQgxzb9V1EkXEkGbdarfqKgfPiIjsPzgO5bYZ
 BJxCRuDxTNUsfdDs8LJsU9YLZU8J44Wt2zptukC2qOmDXQRoQWc7rYchjx/hE4W8QC9m
 HkdYnfBeqjm1IPs6lpWUOXv8FS11hNX40/bJHcRKN/K+CUw1ilYfbvjeyQLOFpKj+BSY
 srjT3PBSoaxgvN5X+DGeK0FnAwW7kwb/Fnr2iQ93Z6ibA2Qja36ORjitwebmKiPqE59q
 3nZMQbRrXt535GbK0VCZdQ3OeQnOoVU5DUfDD96D2yYXkDOB6MIKpGlJL/DLJf/UFZIH
 hkuA==
X-Gm-Message-State: ANhLgQ24ThUNpbv0Gdu8S/BlAa2psa530YDwPGXbmn45oQlPFX9tIj49
 /Be6bBZNdPJC/suS93HntA4030RM4xo=
X-Google-Smtp-Source: ADFU+vsCa+lw0vI65DFP5ej+ZS+r/ntq0AfD6t+AF2AXYctI1w6thPUAQC5p0pbyVOF4ytL9DC3Q1Q==
X-Received: by 2002:a5d:4e8f:: with SMTP id e15mr25151250wru.221.1585736074345; 
 Wed, 01 Apr 2020 03:14:34 -0700 (PDT)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1243:8e00::dc83])
 by smtp.gmail.com with ESMTPSA id d18sm2457932wrn.9.2020.04.01.03.14.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 Apr 2020 03:14:33 -0700 (PDT)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 Apr 2020 11:14:21 +0100
Message-Id: <20200401101423.8618-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.24.1 (Apple Git-126)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_031441_011617_381BC06A 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v1 0/2] Moving to drop Out of tree cake
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
Cc: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cake has been in upstream linux from 4.19 onward yet openwrt still
builds a module from out of tree source.  This patch set intends to drop
the out of tree module for those versions of linux that contain an
in-tree version + various backports of upstream enhancements.

Unfortunately it's not as simple as just renaming a package and adding
PROVIDES due to some issues with PROVIDES handling.  So the dependency
handling has to be handled in the depending package.

To be read in combination with:
https://github.com/ldir-EDB0/packages/commit/1ec73d60da31c13b05c36d5fca2a062bc9bce071

Kevin Darbyshire-Bryant (2):
  kmod-sched-cake: rename to kmod-sched-cake-oot
  kmod-sched-cake: switch to in-tree cake for 4.19+

 .../Makefile                                  |  12 +-
 package/kernel/linux/modules/netsupport.mk    |  17 +-
 ...-sch_cake-Make-the-dual-modes-fairer.patch | 217 ++++++++++++++++++
 ...-use-of-connmarks-as-tin-classifiers.patch | 118 ++++++++++
 ...erpret-fwmark-parameter-as-a-bitmask.patch | 102 ++++++++
 ...rop-unused-variable-tin_quantum_prio.patch | 158 +++++++++++++
 ...sing-NLA-policy-entry-TCA_CAKE_SPLIT.patch |  30 +++
 7 files changed, 647 insertions(+), 7 deletions(-)
 rename package/kernel/{kmod-sched-cake => kmod-sched-cake-oot}/Makefile (76%)
 create mode 100644 target/linux/generic/backport-4.19/392-v5.1-sch_cake-Make-the-dual-modes-fairer.patch
 create mode 100644 target/linux/generic/backport-4.19/393-v5.1-sch_cake-Permit-use-of-connmarks-as-tin-classifiers.patch
 create mode 100644 target/linux/generic/backport-4.19/394-v5.1-sch_cake-Interpret-fwmark-parameter-as-a-bitmask.patch
 create mode 100644 target/linux/generic/backport-4.19/395-v5.4-sch_cake-drop-unused-variable-tin_quantum_prio.patch
 create mode 100644 target/linux/generic/backport-4.19/396-v5.4-sch_cake-Add-missing-NLA-policy-entry-TCA_CAKE_SPLIT.patch

-- 
2.24.1 (Apple Git-126)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
