Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D93571DF0DC
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 22:58:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=38KbyyH3vpqpYL7JTzEuadgm/ULC2CCoB7pMIV5wWbA=; b=jXo
	Yzv/F44HnL3GakIWfMZxoDrE6DXw52zs06lgGs9JQHMwoyvEdJR4RiCl4rTFTAcnniVR7XZ5qLxJn
	Z3FCMbx2Vxl7OwRPhslw6XczJ+cd3Eb5F++uI0Ey/18+YP1KPni/hrqB4fJfBXSzFrL2wRVDIzezr
	p/4XTxAbJ/hnCq0IZw6PA1Jho9WCaDzaFmbIrG30xyzP5Tqr2l/45BZ9oGOoNR4xico+aWxsq3ec/
	ufiGD1doOPdETZGE4xhH2prvWt239or/qVL7QGLuYxd4SqpjR/Im98Y9870WeJE/n3yxUWIzDagmZ
	zWGP8W6jrg4QiT6tzzLjRmH8vCKwVzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcEk2-0006dh-Se; Fri, 22 May 2020 20:58:06 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcEjx-0006dL-0s
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 20:58:02 +0000
Received: by mail-lj1-x243.google.com with SMTP id w10so14351969ljo.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 May 2020 13:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=mT2a4AxUUnwvGUoPzUhfiB6by/dBH2+g3AEcI6T0qZA=;
 b=A2/ALK6RehB738sMu4csScCQR/KUPmcAVmSnuuYUHYL2sy59cYAE+FZYwuyPUCwccR
 w213Ca8WMqjDPx1UDIkrA7HZujjJoRIEjsdEvtwEBq0sPZTNzjQKbWRrX0e/quzzWB28
 dp48cJ41RaxHuuIR2SgOq/fjBHAzuKthfFuMoX0iY7pbEAlH8lUaB/3I6M1/mRH6IVRL
 tKbq+VChyBHiwtdCNmonHTMtw3AgltFMEEyiUC0Ymt/13kHAi2LW7gpVXzwQ0QQY7cbO
 Za83952C8UR5Vm2x8a8KaBuRwnQUr7ImAid7LEtDURiK18lPVHpEg2p/Xvuaw+CJMAV4
 +u3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=mT2a4AxUUnwvGUoPzUhfiB6by/dBH2+g3AEcI6T0qZA=;
 b=qW5ozJuaPHe9mpF2Y/tQnACtNyzDFUffjC0HaTXzlChiGsTygI4tGsmsPFBpYSSJnj
 Uma5YM7C8Y3WS+q/CV+nuupvxiqb94eTd8v5c8kz4bdoIIrEUyh71/eWCQeEVyCoGH6T
 LScafa5CNa3UHbxPSpOaPsezQK2QO+3ISjCxNyAJ7eDgzamDU2PFg0OKLkuWMBaXsBVe
 VAQsyYyAkeZSgPx14pOMntoV5CFt3ejOqA7cnenlIUWkgv6GDO01lTQB/lgIhXTc5o2L
 3kGxYTxLubn8OCpCd1r/5qZsu6ufKH+nzycFmjGF/qc0+rNJ0LsohNd19VgtpeOuhxmq
 u0Sg==
X-Gm-Message-State: AOAM533wQghvKIyXNwYSViPPMo61FzIW90NKg8WKAw6X7PHFW5pvs8uT
 DXmGpqkxvlnKs8NZw9NIgi087mtu/GwBujPH7WY7DXRFgmE=
X-Google-Smtp-Source: ABdhPJxazcNJn6n71jWVbvvNFuyNXjZNsX/EEMtLoDv5r2tdLWW7pRg07AP5dYcWsfgwkWCI5zBqC1YZQlxU5luM/Og=
X-Received: by 2002:a2e:9159:: with SMTP id q25mr7697717ljg.95.1590181078889; 
 Fri, 22 May 2020 13:57:58 -0700 (PDT)
MIME-Version: 1.0
From: Olli Asikainen <olli.asikainen@gmail.com>
Date: Fri, 22 May 2020 23:57:47 +0300
Message-ID: <CAK9yiZCpuJFvd_dT2mMRhi3MtejRpHwhXiDjNHQ8GwnXxKskrQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_135801_080019_4567D897 
X-CRM114-Status: UNSURE (   2.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [olli.asikainen[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [RFC PATCH] ramips: remove patches for USB-dwc2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Tested-by: Olli Asikainen <olli.asikainen@gmail.com> [WS-WR512N1]

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
