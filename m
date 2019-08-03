Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBAE80715
	for <lists+openwrt-devel@lfdr.de>; Sat,  3 Aug 2019 17:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVGkSzniQvUH7wO9PxvF7dN9Ce/pWVzajaIsIejQatU=; b=YdFBe9PLsf6YrJ
	c2QuxPj5r3sbOBmNqsw4ltnHNmEXr+T1OELP6bQtKY3mDUcXzvjo4+d0SKk89a0Pfp9QWFLlI35ZS
	muE05o/kXcHpzz9a3I92tz5Tox+CV13izFEDxcLxSHUjwAVwZkVwkQ1iV2G0BQF7SBycLGwCBlROp
	tFZXqFXySVze3Zo/dfIiUiG9MGElgiCscy6LK508V+xlE3MNjzgvqFUO5tIFLsnnNFU4/a2JyjBAS
	gb4iEauMkxHEaCAHTuD1qJR0AFnJdBNg1BsZq5jfPqbj4yDvcUH8P9V0K6PP/Cqi08Y+S0Zy8B0GG
	9WpGYi/sqCkwZI30evCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htwNY-00016u-BR; Sat, 03 Aug 2019 15:55:32 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htwNO-00016d-N4
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 15:55:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564847718;
 bh=GaR0tiZq0lrOjJy0jlPWs6eheCg91bYq0d1R0wRXHeY=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=GAg31Zx2dfuHmKa9PYMD3zIhEWWvOlvGmu22so2OxKui+PPtY4262OUn/QLiA9fRn
 Q7eTuOTU74dX2z7IAK4MePSllYoV292ROw1p1u7PmyIOxCCqJ8/OcjcrCGOSb3XY01
 qwhaJXNx1Idev6L70R3r3CgaZGFrnZvG61DjEmvU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from darth.lan ([62.14.66.108]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MYNNy-1hq8jU0VrW-00VPHO; Sat, 03
 Aug 2019 17:55:18 +0200
Date: Sat, 3 Aug 2019 17:55:16 +0200
From: Sebastian Kemper <sebastian_ml@gmx.net>
To: Arnold Schulz <arnysch@gmx.net>
Message-ID: <20190803155516.GA2847@darth.lan>
References: <20190803151356.18733-1-arnysch@gmx.net>
 <20190803151356.18733-2-arnysch@gmx.net>
 <20190803154926.GB2480@darth.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803154926.GB2480@darth.lan>
X-Provags-ID: V03:K1:zHLtDqUHxl1mhdsyLY4XJnixObrMQbr4WQ6+EYsV/CT3CNjbv5R
 PvCj1q09IAIB5/OKYweLg9/aXi/TFSE1uGIFp+5Lq/E2THy8qY3K59ftYS+TSEVom3zL7k6
 9DoEPzQYpCzORb6PcIm4Z7yjZV9aLcW2ChSxMov2P1mnnwbk0NN0GnPpB6nyJT/KkuuWSve
 euVFnEz+kOKkrarbxINdg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sJJ/4Zk9qoE=:a7njm8EIziB5aOapGhQMSd
 etJHw9OMwHG6KHJUeL01DXacTUsmUiC+ZfD7iZ3s8fBW5JtKq5mKK4QJ+97b40RbSNZIls1f8
 4pUChr5zm7Q4Lmhn7KLbGXUB37Hl8oab4DR79FsK8p4CvmsPIfwUufXm+TdbQQrllrKOcsPAk
 7nOyhCs2keqp21n+NSDSAAy0pHd6BeZQ+eKUV5Kkznkqi8tjQEHcZ3j/trEhsUphnzWj5KoiS
 OHW6umWoPeeGvPjhxEW1jeSFS05/5QiP5jLyWItR8JFn6mcmCx//llHtRXT6qXinoYZfIi1+V
 YZdugHfjohPRK0LWGS3MrDyi8XhiLrNzcVTIgHtvd1E9qwab9IBtVIjeLcNdgAISE/5I/5OHG
 734hvBzLBiFvN74vNzaFUUKhYCYojbkmLc+yTLIln1cZ9TKxag+kpVU+xI4M1I1br99GgJteF
 xOrW+5EzhepOva9LgZoYWF8wDUGifrWaZPcj875x+zg3xKu48B/0oLwEMUUk9YxwdUslwSI5a
 CiLtxLCASBD7kBBpCXsF7NNBACB0z2wdl8I7schg21LqBFEAiW9NAHN2QgY0tBhzYYD5kxe51
 Xgom8IRUfvGrw6JobhrMhkXSKOwYz6OcuJnoR0GLBhub8mPJd20V3fs9hTQsT/T5IhYL3yjO1
 dWTbPL5NsHAnh67ic7c9BphvITzspl9zmpJ4RFfGaDpG0d6i5NIcueAKe3bEUNidy384fGs42
 HR4EaSJACV4VIP9PHIreOEN1BdvZ0RldtnxKUBGLhGivpB/mpVSIcl/VJgCzEfquPSRPmyOmN
 +CG//1d28EgbbriUUAiuL0t3ChIYqhC0wsaqIRH+w0xqhj0m+33H0n6Dz10gnzRmW8tKWuo9k
 KeJE66ZrFFwkKVzqSzZVHO5Nm+k4BSizdsawlr0nBxMFM7QUYmDIm7HbKq055Q1SWUQq4C5C9
 g42zK0jGA3kdlXw9LRacf6G5VVL3zrFLzl4s3bpHIIA+1xLvMtN5eFUFwZ5CUKveBVdOBdeS+
 ZQX9SOAs3tSPbqC7t7e3kHFpNtUFbQDIJbfAbwKyayDDbVBgeKtWwJEi1NIhl3OeKjkgVkTXD
 RD93m+eqnZm4hWixq2EmTyphfNmvZJq17d6YZZ3bpR6IrxgxzfTAhdpMQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_085523_051980_CA594A95 
X-CRM114-Status: UNSURE (   4.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sebastian_ml[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [openwrt/telephony 1/2] asterisk16-chan-lantiq:
 Use upstream sources from 2019-09-03
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
Cc: openwrt-devel@lists.openwrt.org, jiri@slachta.eu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Apart from what I wrote earlier, this mailing list is not the right
forum to send patches for the telephony repo (same is valid for the
packages repo). Please send patches for telephony or packages via Github
pull request.

Kind regards,
Sebastian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
