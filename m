Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1CBEBC6A
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 04:38:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UdJYtjuQDePkllUaeNqzYrqnladAxxxUzV9ztOrpOCM=; b=U2cyLuAWSjsOlzd2jpQvO1Q9Ht
	qe/lFHuDW4xLxSawVm0cz+ZP0C9Ku/jUynuLqnf1XaKGs8erB2Zj4vjal5Qx4nmq33NZUA1lReQJI
	J0sKgfZW22tuK9WSVNDVXe+wJ182RGZeEtQvsixe7MYCez6r6sTbeS6oNneV5bN1BJenAX7D1jXLu
	zuC4cregNJSlkQe9e/lZwRbYW16SV5/g4QCDjCG0HHup4djXESor80lyU3addgnHJV7TysppJttdL
	Nyd4lX1TII2uu1V8qYu8BnsCC2MHLwZmsDu8+izMwm5ApuLFDYHYB0lH3cJC2Ho11JpMD+WrBkV+c
	qiyxfN8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQNlS-0000md-Fe; Fri, 01 Nov 2019 03:38:18 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQNlK-0000mB-BH
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 03:38:11 +0000
Received: by mail-ot1-x341.google.com with SMTP id v24so2044492otp.5
 for <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 20:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=+Gz6/MeoKmhg+jWjy3qotBgrSsHBWz7mmcPHpETGUxs=;
 b=CW4pdbS2Ka6GWc6OVcexeiFyCXxi7A0w49m5pqvBhIuUIXrrQbEtdUI1SMENkPYJVn
 xEWI7TSRfTlog0TxYtSxjXktSU7e//nJeFRdIezfohU8MXj7qU5fYqKfZcAc6vSqwXe2
 JqpTzFDcZvau6nqB6LXnwuqGY/HQtEqMH8p/nzR4QxvIJyAI2IpEMOu+Fog8WM4bFFJU
 71hqYgNtnsznAvjNjLWOiPwH3s3WeMt0fpsqBVZi8G3Vl7Yx65itB5IWYqkJ1cNel7Er
 EtxpEohV61Xs6se8g8NFyXfKfVGIaV7BWB1bJy7Q8FjSsk3aiElDIE0OYw6CFYuUzMLL
 b67A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=+Gz6/MeoKmhg+jWjy3qotBgrSsHBWz7mmcPHpETGUxs=;
 b=QVQztOqTID7HVUf7xMJ9X/O+vXBwpy18l1pQgfnOSUfLS+/EKXeJ39DoJ28sj4smnD
 S8tqOED0fx3T0XWSB9lPQTLQEFm9GDWJ3D1LFxjSM5SZKps+29bpvtdNG+7IDNj04yVq
 TwjSHYoP7erN6r8IaMCmxBPNLjISsrLq6EGJo9f3Dmt5kjsdxm/c0WshYOOSaOaGDdAn
 /uN7hWdOCH+MFlt437GIsWE7O8idUJGcGv+XnQVZwxuuhlYELLScFcjTPWlXTs+CCjEv
 ExVLovykLPikmtvfDz3BXHjPg8sg1UMFPV2z5MhwoOYumma1xx/wc+oF6P1WzUlI6AzD
 Nvqg==
X-Gm-Message-State: APjAAAWkE8X8t9aCwj0NCTrWuZ5engsOPnOlDLE+IA9aEqeRxnBGHQEO
 AzKiPQ4xNosfH5rp25rZrE0ybXmOk7AWZ048yJlORwU4DFI=
X-Google-Smtp-Source: APXvYqyqY/yWytBghRVUsN+FWg17A3VUUClBUmIt7lEgQXGMtpjVADzptfHEyTPniVVsz32V4XH8cYhb/sbjHacF4pM=
X-Received: by 2002:a9d:509:: with SMTP id 9mr6710934otw.70.1572579488904;
 Thu, 31 Oct 2019 20:38:08 -0700 (PDT)
MIME-Version: 1.0
References: <20191101032858.19013-1-gch981213@gmail.com>
In-Reply-To: <20191101032858.19013-1-gch981213@gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 1 Nov 2019 11:37:57 +0800
Message-ID: <CAJsYDV+9vVH0p0+Gi+1hxGAUMu7x_x-BTG6K2Q6Ka64WT_GVxw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_203810_411283_5D7AE12B 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 0/4] mediatek: add mt7629 subtarget
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

On Fri, Nov 1, 2019 at 11:29 AM Chuanhong Guo <gch981213@gmail.com> wrote:
>
> This patchset adds support for mt7629 and its rfb from mediatek.
> Currently, the secondary CPU doesn't bootup even if I backported
> the related commit, and wifi isn't available due to lack of driver.
> But beside those, everything else seems to work just fine.
>
> Chuanhong Guo (4):
>   mediatek: fix Unielec U7623 dts in 4.19
>   mediatek: backport upstream patches related to mt7629 support

This commit is too long that it can't be sent to mail list. Full patchset can be
found here:

https://git.openwrt.org/?p=openwrt/staging/981213.git;a=shortlog;h=refs/heads/mt7629_target

>   mediatek: cosmetic fixes for mt7629-lynx-rfb
>   mediatek: add mt7629 subtarget with rfb image
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
