Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 098586998D
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jul 2019 19:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Uz8iWmFkUThCZgZBsrjNTjtuB/gLQvBMCaf23a26/E=; b=fsC+Mb80dkPPoL
	Xb0V2Z7qQtK+9d93ATCr4yUB4MVLPHT7Nxm+cOr1+R0KGOMcZoU4YC8ewm8lXjYorRaR/M02JMdGC
	ids4o2mHCAHVU2k6q+LGUFlDPCAyK8QEpcOiDL/l473SHHejl2z/JzIASfZtEw0+ttoTVXgyt3tYY
	4XQ5VW9AyMIz8Fn92vbAigQUTSc/yEVs4fT86b/I0e5C302zSsBCOaUiWlUr6rMHMPsmqPqjMhGTo
	FWqN00IP6BguvKhboeLKfF8HmhbH2Dl2M4FOy7AJwKq8y4HXGxy5WDgSFjZggmsndLmvABU+f3dHL
	yte8E8NPzJAGJ4tS9rtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4T3-0008Je-Vm; Mon, 15 Jul 2019 17:08:49 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4Sj-0008Iy-TA
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jul 2019 17:08:31 +0000
Received: by mail-qk1-x733.google.com with SMTP id a27so12209378qkk.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jul 2019 10:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MZFmoe1fS9QNobwxYaptswH4KYy9Wd6dWWSIH1UnZn4=;
 b=OlJG0IoZaZK7vty8KOYvS7Oinm5N8otH/Ui5fDpM8T0nWGPM3I+DqFZGLZndmCRx9F
 ZNzXjI2eY2acBFJM1SPHuPkR46g+h2KUHl9yk2dThp+0oqu33OryWW6fSLPDw2dw97CM
 mCjEY+cytuKh4zSH64NwiQUFZ3DfcIJRGMt/c++UGl/My8EMD+u7ZXWRUO0Tf5StIZLd
 JlIN0PREN67p1LFHfgurARBCfsdrVeqEcsXJg9nWpsPrm21A4/qHHTL0RyVspaW2b4nh
 RRF++dF/ytUaewYZJgzYc8x0qz4S+13xlMzCaztP2Y+QqOTk+MVQihV3uPzLl1ndsw8m
 2lNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MZFmoe1fS9QNobwxYaptswH4KYy9Wd6dWWSIH1UnZn4=;
 b=dgEL5YrIkFZbzi+5AgKR0FH/RkdL5nRQu5mdff56B4JOy4WMyPhVZMFhdFjiPk0qjy
 sOj470EKfBawAODPBUYaLRdkcR7uAKJHoA9kOOhcsp4D2Z5w7WTQmWDJXmQLCHv45aq3
 7R83YdQOp6aMA5tGhBFI90vwwU2u/QzHQryqNHVJomCAkQG1ok7Kwipu1GA6DUmYzV0q
 UQUSJBvcWvoeUa9jVCCdG4miGUx94qccXZevxVjeQ5t8sl8DFeVjwKw93mXJekkLlkr9
 e5sNRoCuBk4IwAioy5B2dqjnu99sj89a3EJGoej30cUjjfv43JlPzIP5bWIkpj6A7SpM
 3yqw==
X-Gm-Message-State: APjAAAWbx52u5dE2jTtjPhqh+4M4ljisaMvh1dOuMjrBD0s53R8/PDZQ
 movU/gNozPEg8pCWv6umDW/p5fBN
X-Google-Smtp-Source: APXvYqyApsHELY/Erp/CGK6WAN2iZ4ko0MmZXa6R5Uj8jevAbKGiPxbXZmXmCdXmECPeQkmdCTBdig==
X-Received: by 2002:a37:4e8f:: with SMTP id
 c137mr17261757qkb.127.1563210508068; 
 Mon, 15 Jul 2019 10:08:28 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id z50sm9714081qtz.36.2019.07.15.10.08.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 10:08:27 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 15 Jul 2019 14:07:58 -0300
Message-Id: <20190715170801.6785-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_100829_966592_EA184A1C 
X-CRM114-Status: UNSURE (   5.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:733 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 0/2] Remove eglibc remnants
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

I've found some remnants from eglibc, removed by 64da662 in Feb/2016.
While at it, I stumbled upon a case statement with redundant commands,
so I've simplified it as well.

Eneas U de Queiroz (2):
  libs/toolchain: remove eglibc remnant file
  target/toolchain/files/wrapper.sh: simplify 'case'

 .../libs/toolchain/eglibc-files/etc/nsswitch.conf   | 13 -------------
 target/toolchain/files/wrapper.sh                   | 10 +---------
 2 files changed, 1 insertion(+), 22 deletions(-)
 delete mode 100644 package/libs/toolchain/eglibc-files/etc/nsswitch.conf


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
