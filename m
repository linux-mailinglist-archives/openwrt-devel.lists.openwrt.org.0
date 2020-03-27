Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D61DB194ED5
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Mar 2020 03:20:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GBfWouobko0W3o7TLPL4gmLAjf0XLszrN9QEdp3MGGI=; b=llUyLhRT7AseQJ
	k9/+Pt7Ij2xe4Pb888XK7osaS1blNZetgegB0wtoCFnhOaRdcf/OA+T/X9QGBRIUIgFBStSdq5VOf
	XQT66U2kR+wae1Ed74pfI5gyV5L+L5K4LPPWcBmBicX7kkgNjU7QHnmsURfDc+J8UqmeQE6rpHuFL
	GsAcjBPi3iOHaLq8cXtRTtcRCOYcGJ2qw352PUvY8Se341rhmASUoLO8XcnlFx3WKHXQCpprYHGUr
	DjOTd6ubPov0r4KdjfQyLHI7DFfqvb3BBSbMuheqnf2ly9R2tD76dXvyeNcCtcsrqZr7rFAsXqQIQ
	hJAmzH+llyjZSMEh6RxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHebi-00049J-2l; Fri, 27 Mar 2020 02:20:26 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHebc-00048S-BQ
 for openwrt-devel@lists.openwrt.org; Fri, 27 Mar 2020 02:20:21 +0000
Received: by mail-qk1-x736.google.com with SMTP id e11so9359208qkg.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 19:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jdoMNslvPWytoLS6z+LUDMLSGFqaudhmKcvz4gfVWlI=;
 b=OzrAtrfO6UJtClt8NxOdmOji30H0H2psMtl7PXKFhBO9FRtZgRxyHlC9aYaiaSudXU
 D0DJ1gtPeE3l+eGj0AhbbvUaUvZSiekMADxeipyJJCw9Y8Va9TzBJxQA0RWSEbhGvbl3
 LLmmGQ3a4bjvRjSbfs+EbeBRp5opHKg0cJho3sL1JFuLhtSAzSSUaTNgjseQ6wFvQk/7
 RxCywHJuTvwJSnCXHIDAWsyR8OIMXRx/63g04g1wkRf4Yd5j3ksZfQk304TPsGmYs7hb
 UAl/SDl0xLspErvDsx+3P/d2y8WovDoST38BkXrye+dqntaNLjaDsmzD+n0YHf7XpitY
 5NQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jdoMNslvPWytoLS6z+LUDMLSGFqaudhmKcvz4gfVWlI=;
 b=YrO11HDpHrlgOSHKYA2KHDOgAdcaJ6zbecorHnUNghN4RPKhh65BvXysJv08CGeu5l
 /5KddviPdInq7vSdItd1rePrtUGASxWeYtNvwv6pdgtm2AImYAcWtocQw4J1ZQt5/PWG
 hxKGzc9BREUUYXI5FNUC6D96rJOH11ZGtBWuHVMImWUv11MqXQYZ8oLFuCghwY6GwIBK
 WR3qjXaHTJYb8wESEl1qgqdX8Q/zLUO8JibjRrOE+ygyJ691tmei4J7T5PILQRZ/3JVN
 LmST51qowoOCUOn3NZsXdaqZDzoVUr1WjWTBPS0shw/70a+FDD1XRXAwq2URtSSAaPf8
 w/yA==
X-Gm-Message-State: ANhLgQ3YjQ2kqLr3xOfVT4wgHWfTUyzGwLUvmeuA3jqGrE5ojr7mvl07
 D2WCMeHK6/LybItycbkajoA4em7x57g=
X-Google-Smtp-Source: ADFU+vuhAng25ymXMk65xBt/UZJ8JqHsTubiPzw0G5kOMoRO3Tw5o4Bcn5qGDxRmytfkEN2tjrvEgA==
X-Received: by 2002:a37:4852:: with SMTP id v79mr11504058qka.459.1585275617221; 
 Thu, 26 Mar 2020 19:20:17 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id q34sm2885630qtb.41.2020.03.26.19.20.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 19:20:16 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 26 Mar 2020 23:20:07 -0300
Message-Id: <20200327022008.18016-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_192020_415387_CF4E9C61 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:736 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 0/1] openssl: revert EOF detection change in
 1.1.1
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

The revert was merged upstream, so it's official now.
This should be cherry-picked to 19.07 as well.

This was tested on mvebu, wrt3200acm
openssl/openssl#11378 mentions breakage of session resumption.  i could
not verify that.  openssl s_client with -sess-in/-sess_out works fine,
and ssllabs reports resumption working with both caching and tickets, so
I did not mention it in the commit description.  I'm using nginx/1.17.8.

Changes from RFC:

- use the actual upstream commit, which does a partial revert, leaving
  the header symbols, and bio modificiations unchanged, so it does not
  need to revert 22623e0.
- not mentioning session resumption breakage because I can't verify it.

Eneas U de Queiroz (1):
  openssl: revert EOF detection change in 1.1.1

 package/libs/openssl/Makefile                 |  2 +-
 ...t-Detect-EOF-while-reading-in-libssl.patch | 80 +++++++++++++++++++
 2 files changed, 81 insertions(+), 1 deletion(-)
 create mode 100644 package/libs/openssl/patches/200-Partially-revert-Detect-EOF-while-reading-in-libssl.patch


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
