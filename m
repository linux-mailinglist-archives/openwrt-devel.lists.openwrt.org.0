Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED83BC9953
	for <lists+openwrt-devel@lfdr.de>; Thu,  3 Oct 2019 09:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlGD/ATdRxtYUaUDsLYd6SS5MB+rCs7Jm/ARgZeiZnQ=; b=LIbt+U1qy/86ow
	UmxQ+Ua1LJXFkJfo36Tga8M4PiSJY2HovvbpEOvyDUtQ63wID8Hb3fGWYhWBbHiIYnfGaTucnsbJk
	cV8o2SDPWzxVQE8MU6/iNRulKt6ttdTApYO/AB+nBKhykFbqGFXeauip9uGyVMxzJ0OoRbn1WWBl1
	RcAGDDy9g6z1JnNWD6Rr89cQ9lEas6RdvdP/0dvZH9rbCY9XHL96X2XSDhbSTHo9JUp5HbwNaTWdD
	Uun8rbKeHVUyaPG69t4HqaW9i5MnETWvVAm83s5valXS70RU/CfqBiG5UguxXATYmZ/8gDAZXyytm
	WjWzLmKoY6kVccBtug8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFvzl-0007HS-6E; Thu, 03 Oct 2019 07:57:53 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFvzf-0007Gn-0e
 for openwrt-devel@lists.openwrt.org; Thu, 03 Oct 2019 07:57:49 +0000
Received: by mail-lf1-x142.google.com with SMTP id r22so1057129lfm.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 03 Oct 2019 00:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Lk+CF33x6jZdx6YPbTKP3cHr6a/7STslkxX/qazVWTk=;
 b=vs2ik7ZfJTglhf8qp2g9KVgK+EVWyw7s/oq/mgqc7h+JOlkBs3wtPem1ZsgJlC0FRe
 R//ySX5PvxbGgL6W9fm6g/CBNyYkq06io715iGfMx2XA+z9c/G01cP+uNsmbVtEM2oLT
 uh+9NJAEfkPvUTPylG4FpJZi5GL/f0l+pvVKrZ+6KQsi6jDmMWAhkEDsBWWJliimUKi/
 ea24m0y8V+/Z8Pzc3mw2WwbIZoogZOWtG2JQ+PIiXuc2Z5wCmz7pvRf4e3vC9cISnYxZ
 skas7gnZLFnPQ2lOhGRCZCWLsnGiVJ2ga4rslpHWMVrzDPf3BnOSUxp4wzct1Ju85a6z
 AM9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Lk+CF33x6jZdx6YPbTKP3cHr6a/7STslkxX/qazVWTk=;
 b=rAkjvNgCOAHj/Ow4w402sK8aV8QW43zVZydEDrGJ7o5U+aYV0LJpkh3ldEOwoctdy6
 TDpI6db4NckNtzq0k2cEhew0IXxjncaTQeEQSTuw6V6nfRGb6pk9b16ba/e5H9WcqrMH
 oGm9rUcnwsPB9JIbuWd1O6/RgSm+2CdMkuWnpTXk4sj/SVbvE6jDWYkPDyoRTBqE5FrD
 +YTmjSeKRFnigJvyDVJj/jZzie6cy/2nbeanfYsyLFEMpXBgEk1a2+H6zIF/DZcdS+F1
 TZ9edMd/u1j8lc19035R9EYPy7VzhGLZtgN6VU03zlkF0bLnn7qAMXaEniYYq2o1ViI6
 iD6w==
X-Gm-Message-State: APjAAAXeG2TptCZlzF2DjTOdfiAmoqrig13uGeOjqOp4avhD6K8o+C2v
 Mxv+z1sh4ih53+Bu0VNR+aetVZEc56OV/amSjH3UVQ==
X-Google-Smtp-Source: APXvYqwICxPxp8c3NIJt8gsZCpuEVyQP2my7elnIQua9GNRHMjnXm6YtRvi3NJNmn/pVusBxzkeQCKOopvOKX39kC28=
X-Received: by 2002:a19:14f:: with SMTP id 76mr4787071lfb.92.1570089462094;
 Thu, 03 Oct 2019 00:57:42 -0700 (PDT)
MIME-Version: 1.0
References: <e0eb9887-28eb-a008-96e2-66d4de81ff11@yandex.ru>
 <CACRpkdZKAyLvSG5XayUTwe4Nq-2NAYWh5QbxjLwNikO8CsrWqg@mail.gmail.com>
 <aa100fd2-459b-eea3-4a62-3145889f2c19@hauke-m.de>
In-Reply-To: <aa100fd2-459b-eea3-4a62-3145889f2c19@hauke-m.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 3 Oct 2019 09:57:30 +0200
Message-ID: <CACRpkdanKJc3GyXg+aQ+dyD9JvpGmTr80-WcQubNpmT4-goc_A@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_005747_059298_8C3F8E9C 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] kernel: rtl8366_smi: explicitly set
 phy addr for switch
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
 Serge Vasilugin <vasilugin@yandex.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Oct 1, 2019 at 10:52 PM Hauke Mehrtens <hauke@hauke-m.de> wrote:

> I have the vendor GPL driver / hardware abstraction layer and would like
> to use that from user space to configure something and monitor what it
> actually sends to the hardware.

That's interesting and ambitious, I just hacked and hacked and read
the vendor code dump and then trial-and-error until I figured out how
the RTL8366RB worked.

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
