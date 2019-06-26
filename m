Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B736155DF5
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Jun 2019 03:50:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0q7xZVk5HeZSD+aJWIAHyIYeQcfU+2nVr4raiH8YMao=; b=ZU73jYMinaKN1M
	yil+7j/lQk/bl5YnG9+RWPWusKvgrRqRalf4DU/mXTFjzyqO3ArNkkrpToVYexjRw0toLyMTRohCV
	SPFKC7pa7r2oKQPPnnQ4ChK5P2C3kbOGjOXaJIOdgAXnAbT0eX40uzve17ZgOQag85b4IDtL7yXBa
	Bx4jyS6Lj+ffhjCjaLvSbVs1vHKtZqcImnZhUXN2aSHt7QErO3oMEfHyu/ZbG5M8NOs5GMXqhNiLM
	Jt24Z98YZjmxVpGUaKpnxfDoapaO6Sy0SFGQtO4o9wF51iyDJk0vAiVoG9hAull8C7/TzKkPOP4tQ
	3ClkeEKz0K86ddaXsn3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfx57-0004uT-Lz; Wed, 26 Jun 2019 01:50:42 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfx4o-0004tu-AF
 for openwrt-devel@lists.openwrt.org; Wed, 26 Jun 2019 01:50:23 +0000
Received: by mail-qk1-x741.google.com with SMTP id a27so369646qkk.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Jun 2019 18:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WwyKB0gV8oZPFP2vJCt/rsEfohI6CyIV+ZjnMbAzlXQ=;
 b=RofOszS9HCyGX4yZwyNqgrQUnTkkFeYrrSwTKXKmmqmgrfwRK87k2mUdnLM5CjULxd
 Ij3GbvMMfzhob5k0iIj/i2xtdy40oGXBZe+xo3OPOkql5R9tIC/cgxCMF1qWJbuCHDQN
 UFBvp8KmryGuVabj3l1lK8lvOOvR8/Ybg9zfMkMppiYbM73/5YDK2KcnGM82guANrsvE
 bc1TsyZd/E6pUjYbtX+B+J1WI0B3GNvYaDOQZw9AaM2PhFO59lue6evYIB0PS/5lqrKS
 4pjhgnD6YVMewyLvbV62Kw3iLOKm6cQyp85TdzotC1zsfjl9cFNDLa8JX+Y5DHKfrjeV
 siDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WwyKB0gV8oZPFP2vJCt/rsEfohI6CyIV+ZjnMbAzlXQ=;
 b=pSxRLeex6LLbTtEwxQdYnvCKdPe47C4MJYUnov0d74ZI9BbIuURxoL8FjFQmyW3HJS
 oAKallzz8afETGbrkr5/TBl/6dD4BZ5lkEbvKRKjOr+fW4il5e91egAqWisdfOMTvkMi
 gUQM48tPCHTAJI0aqJIz5KIBdTuTtEup8UbbG+iMSTT31Rdj3J57xVFdwqoiCUcR2xhN
 PF6MfVLjNwNdWs+V4uDAJ0RMA1+aHGcbXUr15wTLYWGcGER4CE21wnPCAgKr7QgYywQ7
 p4+kt7MXyqUPqd+EMJm1wGUXuPNfs2mGG5q97Nrelaf9SZZ+vhuW5slGonS2VZz0whv2
 8xRA==
X-Gm-Message-State: APjAAAX0npbJ0prbdx/PWEjJO6w5kUYKREFlvXDenIVd6qZuebtRGipi
 fV0hQM0xJfD9c+KmMM0BHLzYE0DtlKs=
X-Google-Smtp-Source: APXvYqzxNShfn0HoAorTrcqND5c7BH7FBAuEM5uUT0wj6eNzZd5/7H6Ib10j3UkSo3UCy4I55+xcXw==
X-Received: by 2002:a37:a5d5:: with SMTP id o204mr1571269qke.155.1561513820433; 
 Tue, 25 Jun 2019 18:50:20 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id a54sm6523437qtk.85.2019.06.25.18.50.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 18:50:19 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 25 Jun 2019 22:49:44 -0300
Message-Id: <20190626014947.19818-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_185022_385153_E6262C06 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 0/3] wolfssl update
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

This series updates wolfssl to version 3.15.7, which includes a security
fix.

Many of the build options were not being used, and are always built into
the library because of an uncondition --enable-stunnel option, so they
can be removed.  Since they were selected by hostapd, they are being
removed there as well.  The hostapd change includes the removal of the
selection of the library itself, allowing the package to be built as a
module.

This version adds support to hardware acceleration using /dev/crypto and
AF_ALG.

The library was run-tested on WRT-3200ACM using uhttpd with different
options, turning them on one by one cumulatively.  The size varied from
226K with all options off, to 309K with all options.

Enabling hardware acelleration and AES-CCM at the same time results in a
build failure, which dents my confidence in them.  Nonetheless, uhttpd
connects without a problem, and I can confirm /dev/crypto or AF_ALG
sockets open.

The package currently lacks a maintainer, so I've added myself.  I've
split the changes in 3 commits: one just with the version bump and some
minor Makefile changes; a second big one, more prone to trouble, and the
third one adjusting removed wolfssl options in hostapd.

Eneas U de Queiroz (3):
  wolfssl: update to 3.15.7, fix Makefile
  wolfssl: reorganize, add build options
  hostapd: adjust removed wolfssl options

 package/libs/wolfssl/Config.in                |  53 +++++---
 package/libs/wolfssl/Makefile                 | 122 +++++-------------
 .../patches/100-disable-hardening-check.patch |   4 +-
 .../900-remove-broken-autoconf-macros.patch   |   2 +-
 package/network/services/hostapd/Config.in    |   4 -
 5 files changed, 70 insertions(+), 115 deletions(-)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
