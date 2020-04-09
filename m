Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6E11A2E15
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Apr 2020 05:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zoELqklJHNrvCEmC5EzBVyZkrYjx7/KBJhgW2b4gUI0=; b=fBCaeGH9uPQJbx
	rPCBb1ibI/du98gGazz6lcmrf+pD5vj9bYchvVmE206VMlgCDfaIddWeqyN9bv5S89H/FAtiGK5ni
	s5SDCLwg6t+Zcw6txm+oAWe0JvzmB1qmHMvlhce5e4+Nvs5nJp+YBiBperi9+4JA3qGsvNcdteKQU
	E7aTt7dFtgFDkJeYZAGMLD1sf+Xd6DUpoYEgPPPze0VMl9BvXXRFZOuV7BSeOGJrMKiI4Iw94fmGg
	jN71WsCLPI2Gg/7+tiHKx8N9s/s0hobUQF2OOohp2R6ilQYdpY9ICjmRQzmMGb5S9mxskIJ4Wygz1
	5i9xv1e/h3xKSw6ph2rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMOJE-0006EM-KV; Thu, 09 Apr 2020 03:56:56 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMOJ8-0006Dv-F0
 for openwrt-devel@lists.openwrt.org; Thu, 09 Apr 2020 03:56:51 +0000
Received: by mail-ot1-x344.google.com with SMTP id v2so9149634oto.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 08 Apr 2020 20:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zor9MAVLWrjpMQaidvC2BlLTITZTp6ZBfuXkT+/QW4s=;
 b=n2sfUJCSgP7AwLntcQLrH/qS2C053G2uFZCkCPF1U5Y/m//PSZeLDM89Pxu8+8e/hQ
 urcJ0NqyBfbYIyBXTesYLpiD+0VStQaBhMaOGsQ4ZtsNoskZY9iVeiPgR/pGQCvBLdx8
 JxasApJjCa56UpJ9L/YXtP4x1t95aOvoZPw9iTr3mdwWuasIly57JSB0GTnCo36ctfAn
 6KjzoE+MnSWFugb8hMAOwzbPooFZJ6UiheudGXNCJFkQ06Fbhug74So/HWqnIxVf0VS2
 qcRheVSsrOBjXiiMfEg2Y3BjA96tNoDTFhMy9CotfmSspqcd2PDA2WAvUOJWKzdzKOpp
 vQtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zor9MAVLWrjpMQaidvC2BlLTITZTp6ZBfuXkT+/QW4s=;
 b=iM5KhWtsFBNsZFKnjqGFseSCS3C/JtlBzW3eYNloCBBL+HMPijM4qTxXo0Zj6QXaKa
 EH+V3kdA8UaRVBF/qj0uo9Kjk2k2x2dXwQkFQ+SkJiQTMCGahpVAiM52iN4dfgUeaKhZ
 HAb9IZ+k3/t5zMSXqZtti6kpXnOrBeP3J+RwkZoA5yV4xLhIz6Vq7HI32M5P6NyC9NSs
 y0AKZbvHSUkYs709c6m8jELfWPqHJfA4dqZOjSwkqrq92Q8tZRHuJlzAfT9R1NbCNFDA
 +HReuFUWImqFBAUD8bqSMv4lH1cm0ihrAWNlCAZlBysS10Pxqq/X1YzCN4czl+LoavCW
 xSYg==
X-Gm-Message-State: AGi0PubaittB6WMDEv/M/2T664+TOEN0JNaIXUSVVNv1X4vB/BxI9RZJ
 m2BC74CaU3SM6EeE0irxo6XxcvBO5D5Bf1hmq0U=
X-Google-Smtp-Source: APiQypIqGA/njp8Ibbhy9O7vfgj4frdQZtFzA7OLCPd6u2yU+Yp3sTwHziHHjgDTpGZgxjO6xHsIqaG47n0h5EpzxWQ=
X-Received: by 2002:a9d:1b6d:: with SMTP id l100mr7787613otl.70.1586404607572; 
 Wed, 08 Apr 2020 20:56:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200406114428.1189632-1-gch981213@gmail.com>
 <20200408170246.GZ23797@home.paul.comp>
In-Reply-To: <20200408170246.GZ23797@home.paul.comp>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Thu, 9 Apr 2020 11:56:36 +0800
Message-ID: <CAJsYDV+M6jokSJwXBNyZqiKt6GA1XZj5O-=-Sh+3ChutJNt+7g@mail.gmail.com>
To: Paul Fertser <fercerpav@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_205650_525183_C9769DF0 
X-CRM114-Status: UNSURE (   5.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] generic: spi-nor: rework
 broken-flash-reset
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Thu, Apr 9, 2020 at 1:02 AM Paul Fertser <fercerpav@gmail.com> wrote:
> Probably a naive question, but does this have any measurable
> performance impact?

It will have performance impact. There are two extra function call for every
mtd operation.

> In any case making reboots more reliable is worth it.

I also think this way so I didn't do any measurement beforehand :)

-- 
Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
