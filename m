Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E17F9BAEE0
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 10:06:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibfFdgMAzLPp3fDa+uN/W8pe394DQp0K6m/44UjjhQg=; b=B8wnLF/LtVCkdD
	/lyq33DT044be4tUifEGgWsoUBMWw1Tdovg+VD3w53LVqH66CSCJANAnv0Mrf5TX4u1KP+p2RWy93
	2MH6Sm6Au6a6EYYM6XWc832Gt87VyUcbbLYwHXfrC+gMMFByg4okj57tDEs4IvyrtpVIPMb7WXFgj
	laYF0IS0DM4MZUPr4Uw8gfZrgZAjRoZOV6GDjnRbuoxx2rWKqUrF7uwAjTh3HEkWUMHVeRGr4uMLk
	Rds63AsJ6TdHycG6mAASYxsSL6J7XKraEMHHmdemlGXobJbjJr+js3NBh4eGqgKg/m35+8ZbyWavy
	6tbPVk7WNU2iEtHttu+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJMF-0003JP-8D; Mon, 23 Sep 2019 08:06:07 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJM1-0003Ep-Sc
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 08:05:56 +0000
Received: by mail-oi1-x243.google.com with SMTP id 83so6828885oii.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 23 Sep 2019 01:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PMk7+d4w/DGm+0ju9pWFdKtYyKdJ8X0ffmRz6EvobQw=;
 b=c3Lne7tceCu1BTqEcODTNOLNxN51sfUE2Zh2tHVV0bj+y5DA2R+bcBzEO3J3XnmK1e
 k/MRkyOYGZLc9XL4jv1d+VBGJKocwYGmR1mYYIxMIBC2id1GOBopaDmOD0v4kSOasZnu
 cZyIgAOEGJfuVxk7slLgRc/J8DFdXI0wc1u8Tk6TMXy38DgnGjFtEBTEb2Gg9PiYg9C1
 zb2HMJ7N4b7jToGBUYf4xOwQuo0DxKsrgaOPkuMTarBQc41yzgxAY7UWnI2ZUtH5G4L9
 kXdD1taSCitjbE49xxpE3UI66YOPqazy1cmebCimuhrTZitpHDzRhSzcnHbk5otPLa1m
 JFFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PMk7+d4w/DGm+0ju9pWFdKtYyKdJ8X0ffmRz6EvobQw=;
 b=TZAWDVoe+RFfSXJVuGyThY/4loOqQQ58p+9hG0jeQEAFZfkAh4L0EqC/xQgFZMR131
 KddtKR7meAW4qWxgQg8uTusy1oOoEhpYos/5LJ1KkxBFlwpgGvYQsTMJlxJaGkW35tCq
 6u2DwrNxgngAy9D+MdKX2CRItEBLPz73FcrOJIti3XBIogJjWrfZFsfmZ5gzun+xFcOW
 VPQsIBrAV0SJjUq+pIr64vWkdiqlt6MiLo3GF7RCmEtyUpX/+0sP2fY4meHozz4N0PVa
 IoeEa3oXLA29LxOSCx8/c/x1zjYNuxWYQZy+uykrLxYgdk7adW4WtxyxV6klyL7jFyPq
 Rxsg==
X-Gm-Message-State: APjAAAWKyB4J7DBHXveFpkPbRoAGRrZ90qeiKmw8cKS88ug7jGnc2S8d
 WZ/XFWKfGKygcqPiJNNjl2aKohYfKwjiUZ+kang=
X-Google-Smtp-Source: APXvYqzNGIcSpV5jd6qEBgQwhUHyQEOd8DbDPc+7MGYAVjlcVG5EDZLnqvTaT2s5hvOJLYLyW7hTbgCyc8Q87NllWAo=
X-Received: by 2002:aca:1a12:: with SMTP id a18mr12390001oia.30.1569225951726; 
 Mon, 23 Sep 2019 01:05:51 -0700 (PDT)
MIME-Version: 1.0
References: <e3820a48-cb98-0947-ee23-29169a5d4ff9@yandex.ru>
In-Reply-To: <e3820a48-cb98-0947-ee23-29169a5d4ff9@yandex.ru>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Mon, 23 Sep 2019 16:05:40 +0800
Message-ID: <CAJsYDVL0TM+BAKocTxQbgNrZzOjS3jaieo2CKE2trcgjzA+q7Q@mail.gmail.com>
To: Serge Vailugin <vasilugin@yandex.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_010554_754011_B33AFB3F 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/3] kernel: rtl8366_smi: explicitly
 set phy addr for switch
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Tue, Aug 27, 2019 at 5:49 PM Serge Vailugin <vasilugin@yandex.ru> wrote:
> [...]
> @@ -1558,6 +1558,14 @@ int rtl8366_smi_probe_of(struct platform_device
> *pdev, struct rtl8366_smi *smi)
>                 goto try_gpio;
>         }
>
> +       of_property_read_u32(np, "phy_id", &smi->phy_id);
> +       if(smi->phy_id < 0) {
> +               smi->phy_id = MDC_REALTEK_PHY_ADDR;
> +       }

When of_property_read_u32 fails, it returns a negative value and leave
destination variable unchanged. You should check return value here
instead.

> +
> +       dev_info(&pdev->dev,
> +               "switch phy addr=%d\n", smi->phy_id);
> +
>         return 0;
>
>   try_gpio:

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
