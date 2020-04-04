Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F047919E470
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Apr 2020 12:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCuM9BJnZ6kfh5tALOS5HcrMyMxk5ObQrrxNxtqp2EI=; b=ASnTHL5Fia4TJu
	4zjhpmJgjY3mUspeuLZNSb/QqZ65d4lh0+TurVmPHs7qNBXlNQ85/Q7jkOvQQbKQCvGOXwlcgXvQn
	yTVfbECJ03E0oP7RpwfDWjtOCTdrku4iXb86N6mUISzmVbErix15MowbgnBVd+UVr/JEdMFSRHpMz
	rGAvyqmrJxBIOAxczLGZE/ghOO12h3CI5QhZgdlE5i4rukvWtvsyTfeyLrYMssyFcAwOAI3uLaCh/
	5R0A1QmbETxCEnGSFmtvpPqW+u7c93QRdPos7lRFklrso5PpIW2ohQpMdQ3Dkqg5HMVKTu9zRR15F
	3WuI09lhhzI6oV/sWWuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKfsl-0006tX-Hw; Sat, 04 Apr 2020 10:18:31 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKfsd-0006t1-VR
 for openwrt-devel@lists.openwrt.org; Sat, 04 Apr 2020 10:18:25 +0000
Received: by mail-wm1-x334.google.com with SMTP id f20so1441597wmh.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 04 Apr 2020 03:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TiJaN8RD0GLYQWwMd/ksliEjpHMqTW9t3HwzZ7jVJRg=;
 b=hXl8/CJeI2mtGWVFg6Y1d+NZtjbD59j42PRNij4cf76m7b2Lelzo9SRJsQMZTGyaTV
 WFv2MQYGtWRV7gCwyfNbO8mFskWMbFTQYDaMjGbZKEio1DDaBMLsaJCEa5grxlD7h6qk
 pGB8gK1W7QgloUCJSPkpT+Nt0/hOgTNZVMhK0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TiJaN8RD0GLYQWwMd/ksliEjpHMqTW9t3HwzZ7jVJRg=;
 b=CJuVZNbLPrpury7IEyK5Ez9OHVwJQTadcwoX+QQd3i427l+NFmKDwoigZ9GE38Lbor
 lLGq3rXZ9JCNxRuvXUw9qo+ZhfcR27/Bq61yEPRZtyc1px1ajc2SIqbXfP7Tfd6NYDWp
 8bybqRm2zjjvwVJD0mehx9GaNWSwqIuYCCIwnBDnCDRw/WwZcnLk6UJaweAllagQIz/r
 Ik028qLBzsXfR32QWqmF0+cJ9pi2kbm8x3tZuDQ6U9FxvBbS4wC/QzYa+MLoAh9tFoZh
 gdCNZ7rbroln3NtTBmwVGqwbilBuRk/8X24ue9uIUWi1xANjIOCOWvpS2OpgFhfHv3VT
 UR+g==
X-Gm-Message-State: AGi0Puapma1hDHkw7Q0fq4ToO599C2TnfEBA1wnDE5amOw2SyU6EFDkx
 tXE+u7cqOp4lzgJLJHz4aMSNyGDtu18=
X-Google-Smtp-Source: APiQypJUOwQBkNqS6BQ0Cu8AkIJGR6slRPigSThxzPE0s6kgZtFCDqANsbOG9tA9J3ESN7oZIIvynA==
X-Received: by 2002:a1c:9dd0:: with SMTP id
 g199mr11833075wme.110.1585995499983; 
 Sat, 04 Apr 2020 03:18:19 -0700 (PDT)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1243:8e00::dc83])
 by smtp.gmail.com with ESMTPSA id g194sm5306497wme.32.2020.04.04.03.18.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 Apr 2020 03:18:19 -0700 (PDT)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  4 Apr 2020 11:18:18 +0100
Message-Id: <20200404101818.95313-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.24.1 (Apple Git-126)
In-Reply-To: <20200318093526.45096-1-hacks@slashdirt.org>
References: <20200318093526.45096-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_031824_009111_45372C20 
X-CRM114-Status: UNSURE (   4.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:334 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] Merged: ath79: improve mikrotik-caldata.sh
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
Cc: =?utf-8?q?Thibaut_VAR=C3=88NE?= <hacks@slashdirt.org>,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Merged into my staging tree.
Thank you!


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
