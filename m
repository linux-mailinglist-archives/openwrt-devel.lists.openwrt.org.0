Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73ABE892C6
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 19:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++u01bo11scLYiYMyKM0kojMXfiQc5a+A+PltdX0joI=; b=PWC1zImu7i7xSt
	LuBoRML1dpUze9Kloaj5Jjiw3m9hibOOSgkR74dVtKQLm0e3OJfNzDpUq6b5cRzSMGYuVm2TyQRZB
	yBaV76uHr3sOuYh3DuVWJG6jn4IWL2vVFtxz4hpOQSI3geXqrVfII5x4hDz+ShUOwrVquAw39d9v7
	65hLV3nbJ7FLAELwhRm7jrrTNVby+OhEGr50hwLm2oRsOc4MtPH+X5xE2AOORBRyKqiyfTnv3NKBC
	tjEWc/7IzGLIuFhROnlRmHxzFWQJcOhZfEuWslHeJzUNJzDUUNtS0rux6NQ5VlGFyaz9wENc9d43V
	J0SCTGqWh+k7p4nfmnFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwrS0-0008Lg-IG; Sun, 11 Aug 2019 17:16:12 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwrRu-0008LI-Ol
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 17:16:08 +0000
Received: by mail-wr1-x42e.google.com with SMTP id r1so3559123wrl.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 11 Aug 2019 10:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=O+m8BssosA6b/KKh2qFe9/uaiw6SIg00pdTKG6wdHIw=;
 b=Dk7WeZLcfNi4BKpg3ZPjDOb/oQiMiurvMlr6SL3NkEvg8zaheCcb4496ZDaD3TTkQP
 1jvKoEtKeiYarS8lNNdQyert5gpLTVZUeb7OA0iKEfv1sOycnJwjZmW/12sGM8jw/LKL
 6bDAa0CxX/dpIDmIXCZ1k3JDJ9gX5c3DlY4swgHL9sfAk5DNBvin0VVFP/mydyaIWSzi
 vBEgRSUt0rRBD4dBPIJdbJuafM0jPZah9iFwlwXa7QOVzkmIlS9idSwwbo6Qe2T4o9u1
 /AMCrKO/K8g31cMOCrTDuIRm0AMuFLN6ss6MSR00n8d3EWLq0KtQewFRNHaqhfdZvOwn
 hPwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=O+m8BssosA6b/KKh2qFe9/uaiw6SIg00pdTKG6wdHIw=;
 b=OFhMT5Jz4quTGvLtwgmszLqwjyXamufyXTbSIO8CFI/m3n2SgQeByNOQsulhky57cH
 nyRgBDg7M3I8i/uRauz/D0cgyqfGh3Kd//JI4O6xmYk+dvHQMkJXXY+gY8XfnMPPHwWE
 pCGw8/h99IEcE81f4ykgKPex3Th/6frTVj7nx/hKuGDhP77Xq+tGMhFK0pvcgrjfnWGq
 NZr8Q++WYJLCuPvM2Rps6anBjlOGNq2smuTX+S9LY1M03qFZFTeth4PUu8QuPVEv+LGu
 mQlXjCCgRjJEiqeNSIOeWiBvFGqATc6TM4RGI3I26HFHGHNp+eSvUEBheq4ZHE2mLmom
 mbYg==
X-Gm-Message-State: APjAAAUtgVAThK/x+hI3E7a8yECi6FgcOPYzheQZT9Szaz40Cm2har6a
 q87nPpvqjx1AiCAX3HpsIOs=
X-Google-Smtp-Source: APXvYqzpnGHJmDfCIuo+wx0WMKnMXzqKThhGnljnijZOXc3E40vcUI+GvH/LAClJ9q8dIjMLSKNeqw==
X-Received: by 2002:adf:9224:: with SMTP id 33mr22279834wrj.238.1565543760587; 
 Sun, 11 Aug 2019 10:16:00 -0700 (PDT)
Received: from [192.168.0.3]
 (host78-240-dynamic.54-82-r.retail.telecomitalia.it. [82.54.240.78])
 by smtp.gmail.com with ESMTPSA id a6sm12069823wmj.15.2019.08.11.10.15.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Aug 2019 10:15:59 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-Mailer: iPhone Mail (16F203)
In-Reply-To: <de6aa12b-8e9d-413c-7577-16b4d400f725@gmail.com>
Date: Sun, 11 Aug 2019 19:15:58 +0200
Message-Id: <B698834D-9E9E-4A07-A6EB-0862E6FBF9B6@gmail.com>
References: <2f56d90d-39bf-7f63-0676-e0856e6d9f15@birger-koblitz.de>
 <75e48acf-8bfa-5101-3f9a-02ae2cc43c0a@kresin.me>
 <de6aa12b-8e9d-413c-7577-16b4d400f725@gmail.com>
To: Piotr Dymacz <pepe2k@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_101606_806930_80461E9A 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: use gpio_hog instead of
 gpio-export
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
Cc: openwrt-devel@lists.openwrt.org, Birger Koblitz <mail@birger-koblitz.de>,
 Mathias Kresin <dev@kresin.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Fully agree. And BTW, AT commands may not be a viable option in some cases. We need to be able to manipulate gpios from user space sometime.
Thanks,
Enrico
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
