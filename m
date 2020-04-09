Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD93E1A3B83
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Apr 2020 22:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tVdS17Ib6nB/2/bCJV/fG1LNxbkb/guhT6aIdUottgM=; b=LmdXcwzQeUBoTNxhREDMZM3Mc
	lB+32wHMB0sREp13Yp6Vl3Wn1gj7XQRdLBeo+8jcLgP+ajxKi0+gfgf1VqYY3N2S2N3JsIVgU6+Se
	Sxz5jtKXNi1tJLaDOTSS+LiKV2ZLLVNbTNI6brsFP2hkNRPtB4PvGsePZWonaR1ubaY5GwIhrmUq3
	z3wKv8lo9DWaV+xTFKZC7X1KyJ9xcciujdjBagNBllqP2+mygUJKNuobEKGrhe/a31MkoGTn7nQSp
	L3jR4tVDNRw1TO5KmgIJt4q+zuvyrOe4/rZtiY2E8GhjL6KMfBpmQ9PLp6TXvkeRa+raV2Y4giEbP
	ox3oYYRZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMe5k-0002xI-MS; Thu, 09 Apr 2020 20:48:04 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMe5f-0002wq-8R
 for openwrt-devel@lists.openwrt.org; Thu, 09 Apr 2020 20:48:00 +0000
Received: by mail-wm1-x32b.google.com with SMTP id y24so221439wma.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 09 Apr 2020 13:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=1sA8QM1h4jYz2i3QQaOJEe4xtGfDpKOSR9KYki6xuvs=;
 b=HFNcvaVh+YUiSSqOYUuYW4e4zrGoXkT2UmL5v+lvF81SnXu2V6lVyNlzLAEz7qxm4b
 55HRp0NcHumwnuINOrDAWFPkPDB4CUEWyNnP9lM3+F+FxZ6CLcrofNZdqWLpVEd/nUeF
 xxL1TzboYSdFN56RdMXtI0qwGN61Cin23iTVAruCCJXNh3QlBrfLZyc8T9++lJWLKLjz
 HIvNKuVKoRrGcQQBmioWIMt3TW1OmwSizJ1LH4lvfoGJuMqxMmli1FS47hoOpISHpmh1
 MB9wp6bakRFy1V7f9P4IsrTLpelZOH7lSxzUftYLt0mrJrqNXN6vg/biHtW50HaqXdk6
 EXdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=1sA8QM1h4jYz2i3QQaOJEe4xtGfDpKOSR9KYki6xuvs=;
 b=qWXl8ZtX1E4XZp8nvIFS6dh4Mc/Pb2uSoXfZPbj11KAqXYoIvM5vdA4AW0MF40CWi6
 anumEy4slzqV+emqoIQyO7jJjz/Nn7a3AVfJAP1ppQ1/YGQxXLU+FoQlgQzgTEpX77GU
 NZtPmbeKaKE/fcKvtjTcYTojp29lW3JPZd6cqOyNHJerHQuxeEqe0Og2SseCQjuHe2ZU
 dWjjN3miqo7Daj+ZQG6qAVZAtSAotmiiInj+i8T30GwFo6RqeM3kiq0msRKtLGDeY6r8
 PoUcT3gq5XbM3IEg6+lrKN3Niy9DyUVTb5aDQGt9vJd+1RlgcMErex2hGJptmYYZVIoQ
 fGqQ==
X-Gm-Message-State: AGi0PuaN9DDw/BlZQTxNSaTr8ghFSN6rwHgsE7zq7GL3NJ0mFxxfflfw
 qzElaewEOp0rBpDL5sU3EDE=
X-Google-Smtp-Source: APiQypKcCMr4xYqQdPMTjF/7v2KnFY4k9AgNcHxrcjxlfG4AbQZPvViJMDKdB9Yzu/4HyZPK8IrA8g==
X-Received: by 2002:a1c:195:: with SMTP id 143mr1686939wmb.0.1586465273327;
 Thu, 09 Apr 2020 13:47:53 -0700 (PDT)
Received: from eeeinsomma (host40-255-dynamic.5-87-r.retail.telecomitalia.it.
 [87.5.255.40])
 by smtp.gmail.com with ESMTPSA id 9sm5070064wmm.6.2020.04.09.13.47.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 13:47:52 -0700 (PDT)
Date: Thu, 9 Apr 2020 22:47:50 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>, 
 Chuanhong Guo <gch981213@gmail.com>
In-Reply-To: <CAMhs-H_VWuxyFF7v9YaJaF1FJ-C-HSD9nS93mTd58RwrRMEtbA@mail.gmail.com>
Message-ID: <alpine.LNX.2.22.413.2004092246260.6586@localhost.localdomain>
References: <82a851f6-1e86-201c-f8d2-7a3c5d915af4@marcant.net>
 <CAJsYDVLEDyEurCgdvm365WtymgOYpO1Lq7O5QcqimcTgH_24jQ@mail.gmail.com>
 <CAMhs-H_VWuxyFF7v9YaJaF1FJ-C-HSD9nS93mTd58RwrRMEtbA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_134759_299266_BFD66A03 
X-CRM114-Status: UNSURE (   4.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.8 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] ramips/mt7621 after 5.4 switch
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Andre Valentin <avalentin@marcant.net>, David Bauer <mail@david-bauer.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

As a side note, even my Netgear R6220 won't boot;unfortunately no serial port, so can't diagnose the issue. Sorry guys.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
