Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B714DD644
	for <lists+openwrt-devel@lfdr.de>; Sat, 19 Oct 2019 05:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9g15KMIx7/lyI1jVPw+bEzmr3+PXQG8WS87WVonYnY=; b=morDTB81yCjFep
	pEpIM+aHVs7+5rt7rdgRf0JCV8G9cFvHSucl93IOQP4HKfPhwoa4TNJEF+Ba+tkKe1t58+sfU1TRG
	N8w7Be7yzvjP8MPWtsnr9RmGEqm8QyWy3EExt+rWIhKswJm0Jbd+qo2Rp7bSXz9Xm9UADMdaAscAO
	X2YJTkfOhBDoTkbkcs59oW1NmIMDW71CLzRWgg675R+kdhy0N1qQJ3k9VvKX3wGdZ115AgRrMXvc/
	hIFxib5onDkM4FOOnwx+cM/N0twvNrxOtIfZDJ/3namhxMl7vj3Qu1QOqqtI82Lgqei8ki/anyVVK
	F0MVqm089xo+quk45z+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLfAV-0005q2-4o; Sat, 19 Oct 2019 03:12:39 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLfAL-0005pc-Gz
 for openwrt-devel@lists.openwrt.org; Sat, 19 Oct 2019 03:12:31 +0000
Received: by mail-lf1-x141.google.com with SMTP id t8so6069233lfc.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 18 Oct 2019 20:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Akq7YKhoCa2oYqMu2/mqvOxlev3W7YNMbwp9ebKwc2o=;
 b=stBqkAqVTlxczB6+N49r7IE826zFiBFQ9K6LFVtp8jM7uwji+IKGGuQpskhbf7LFc7
 Lhretqalv4VQaBtgp4FpQhPJVSISYO00Kwb57uDCF6ig7GaAzsXrghtd3iMtcxhUIp6T
 OVguyaKUAWC3cpdx3ep+vVu8ZTIEoRPmjkjTwOvfmoA0573mXlIWwlrjQOiqR6yIm2vQ
 kYC8rZoxnEh0G2eYvugvmIjCQBbE1npBwBHbIbKsy68xw+y57NDYk9Ohb+2zEVcMaKB1
 tSs9hHOsqhiQI2VIZ/KesDUza9EbR8Chw7gEhh2Lz62gIRw7hshLao66r1Sa0BAiHQZ5
 wO2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Akq7YKhoCa2oYqMu2/mqvOxlev3W7YNMbwp9ebKwc2o=;
 b=TQKFJifn4CwqKneN8pwmR9OtGaOSY7DY0N8ihRHrt4wMtr3UJP2B47zp3wlzAwsUV9
 WG5EVkWIuWN8GJfK0zA05IMxH6JRf/h7y+pdVCVyL82wEqu7fAwyMFeM1EM9F2EU/Agg
 5zxE4JN2SPOJw/WrrYlSDO/kd/ocGwhzJR0KpPjpMNdIv6kG0oYug9nZdZUVgbvx++KB
 VAav8KQ8PMwJ5Ok/E+HLGPwDdoYgzSo9hMwL2AzQd42t07Q6zM/iaAw7DhFFYvd37PYT
 Z8+aKSM7k9x87K9rnr9aMLZ6L33szN2AP61u/kPCaAwfhbCNTXdsr3VLYc0Q2rAcCRu5
 OXnA==
X-Gm-Message-State: APjAAAVEVZsXzNLDBe+ZlliJ2E6Ry58gFPLKUNvOb+UaPVPxkcjeJ2mL
 SUWi7LlbkSaSeRZOIefkUFtacZcb3VrSDwZCe0M=
X-Google-Smtp-Source: APXvYqy02sHiBY5RP6sFOvab9o0YexhZRIs/pslvKetlfPmtPBhyotQmAyHU13c1Lr5xha6vT8tFS1T3q72hACtQSN0=
X-Received: by 2002:a19:fc0b:: with SMTP id a11mr7947388lfi.105.1571454747333; 
 Fri, 18 Oct 2019 20:12:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191018130733.8419-1-yszhou4tech@gmail.com>
 <CAKxU2N9C8uCvGkWM85g_qqkyjn-ywkf7fSk8DYUW=FK6gv+1Zw@mail.gmail.com>
In-Reply-To: <CAKxU2N9C8uCvGkWM85g_qqkyjn-ywkf7fSk8DYUW=FK6gv+1Zw@mail.gmail.com>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Sat, 19 Oct 2019 11:12:15 +0800
Message-ID: <CAECwjAhThshC1=JcB8n4rHRDAnMGZ=2uYqs0+6O1VUJrXsRsFg@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_201229_588987_9697C446 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] libpcap: build with cmake
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
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, 19 Oct 2019 at 04:15, Rosen Penev <rosenp@gmail.com> wrote:

...

> > +       $(INSTALL_DIR) $(1)/usr/lib/pkgconfig
> > +       $(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libpcap.pc $(1)/usr/lib/pkgconfig/
> I would check the generated pkgconfig file to see if the file paths
> are correct. Example of correct:

It's made from template applied with configure results
(https://github.com/the-tcpdump-group/libpcap/blob/master/libpcap.pc.in).
Yes, it should be correct.

Thanks for the review.

                yousong

>
> prefix=/usr
> exec_prefix=/usr
> libdir=${exec_prefix}/lib
> includedir=${prefix}/include
>
> Example of incorrect:
>
> prefix=/usr
> exec_prefix=/usr
> libdir=/usr/lib
> includedir=/usr/include
> >  endef
> >

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
