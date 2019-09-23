Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 757C0BB3BE
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 14:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6sEGVJCaRd2R/D8/hEqsTCCHLqn9CwLOKzhPBxPRlQ=; b=acP8qN+Iz4L2Nt
	Y3glDmwDNs6qzF4+RnFQS/93FyoV1J8t7pAxXlX5WMmQb0AVO871z7ltu8l2tjvWCqZ+ZKwbweip/
	xkbbX2kcb6qHinmbcTlr5XJF5MkmnSBhQmWGt41/srqFVyY9AeGzLSUdOj3GaIXIV4lW+rvIhZmFw
	pvN+d1gLPGvAoZdC2Cyi6UunnLTg9CFN/gWliZUrEYIcwMnXjZcbkif9krrQthk+XeAeevhXoYvPR
	ANXymsX5dSeUKedIpHOLiOm0nsMA8JyQR09Sl99ui0riQcdZuxc/UZgnUFQJmeazx3jX73nAoEY5Y
	kMHni52E0iyPCMT1ZZvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCNSK-00080e-Iv; Mon, 23 Sep 2019 12:28:40 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNS0-00080L-6W
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 12:28:21 +0000
Received: by mail-qk1-x742.google.com with SMTP id f16so15123067qkl.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 23 Sep 2019 05:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=16IPRsA39B/qLjp/RC/D+ODtOClXIAKeVLjFWk4D9Ow=;
 b=dqVzAlFJfulKgu7j79brYx2fUKC4tOk62QA7ACjUdLS8CjUsTDJnvtwEL/VoyJWoxA
 8uyUmKzmy35y2feo25aTqB1sjVtwtME8xpqTFzyIG1WyNWWFcqauz+OGcbQDtfLrAexF
 ksgQNhJCXTdzf2P0n8hFiOuUv9QG0bKVw+lJozp31Je2dBGISLUhrjDZlbKd6TenCpML
 GKbuUSPBAdiG2Vwk5pB/5Hif8Oc54RFVfjnW2MvJarL6Zh7fUBpH5aWPyB2lF6Ca6U7a
 uTO1WzbbAGOh3N6mRkGNSgj57d+p2e0fmLliZKo1TyP2stXkUw+je+DHI6KdLwZiUGUu
 nZNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=16IPRsA39B/qLjp/RC/D+ODtOClXIAKeVLjFWk4D9Ow=;
 b=W7Tn+kY72HruJV1QbhgBSzF3gt2ytRbWdCsuiO0hEqTQ9Xd0xgMS2MCxp9OmPbTX3N
 sYywha+0qerN0x3pDhqcN79hrbnGvJhLWYZIMmJTWxTYLScmfISPHLxjJkddC+eUEkXs
 y6W4gWBRKy8vFgFW9epM53SLr033So1zVeHTjInFn/BVz4qusRqDX6hwOSDedkwCmaZ7
 wzuKM9s/QFWuvUSkI62RJuQx6D9byvCs5PtLbz+zEY4y+5KJUi+Hvqlzq2WmlFU5ayS3
 WrCUHJ/Jm7K4x34WmLXWN0Ej6lawutvzqQCxI0+mGgshG9FV1naXnJs6L4h03sr2eHBu
 3/HA==
X-Gm-Message-State: APjAAAV1Dw2x0wA1qYQBxtc0gf4QUQ/+6N6k+aRV/FV9tlm1QsOZwtPY
 vzo4OoHtaX6FdO84SDMcK+G0pBRJEvn0BiziPNr3jKWe
X-Google-Smtp-Source: APXvYqz6LcCrnIcLXF1vCWvIsp42OUIdvph3EDctXV+EGnI3qZlV4UQqH3EsAczQUZ2mmqTiH/Kl8Mi51+mJAtEiDpg=
X-Received: by 2002:a37:dcc1:: with SMTP id
 v184mr17162160qki.258.1569241697900; 
 Mon, 23 Sep 2019 05:28:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190920204804.10183-1-cotequeiroz@gmail.com>
In-Reply-To: <20190920204804.10183-1-cotequeiroz@gmail.com>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Mon, 23 Sep 2019 09:28:06 -0300
Message-ID: <CAPxccB13Fjqbob=cLYnJS8UbJUOFtqoFOJQif0jvAy1qUMhyCA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org, Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_052820_246118_47D7D646 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: fix hw-crypto detection of qce
 driver
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
Cc: John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, Sep 20, 2019 at 5:48 PM Eneas U de Queiroz
<cotequeiroz@gmail.com> wrote:
>
> This adds the CRYPTO_ALG_KERN_DRIVER_ONLY flag to Qualcomm crypto engine
> driver algorithms, so that openssl devcrypto can recognize them as
> hardware-accelerated.
>
> Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

I noticed this was moved to ipq40xx, but ipq806x is also enabling the
qce driver:
https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob;f=target/linux/ipq806x/config-4.14#l119

So I imagine we need to either copy the patch to ipq806x, or disable
the qce driver in ipq806x/config-4.14.  I don't have enough knowledge
to decide what to do, so can someone more knowledgeable, please,
either do it or point me to the right direction.

Cheers,

Eneas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
