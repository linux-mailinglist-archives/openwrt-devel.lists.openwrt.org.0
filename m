Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09451FFEEA
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jun 2020 01:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ea8y8i2YLL5x9OKkU/Xzwp3tpciQVYLZWMDb5o5+iu8=; b=NL2cAYaG4QW7xq
	ejiBGjrAwN8LHt4k0Ulqpw05tyuifPrKaVjPjgGRDAkMIUPJNk1Ua5/Ab0LVp0vQAEhxQJ+DsuCyQ
	PwL2oTncaljRjfJzMv5PmDp89wcQMHZ6zfF2JHNbAxTVlZmnXJWc6owLB6aSFvO637OGMVA09HXvT
	K+DsvS2uBImDaZ4VHzIg0JEl7cN2dyQ9GxhWZsapG+aGrExd7+Zrm+oRwTmKw7LuetZ6ymKHU6y0D
	gw930HHMT1qQ4F5xIMPn0t6rv19mkJ/j2ECxZ70TPTImScJg9cIq707Gd1miIplOfXXcYJUnutb/u
	LOlUC4NKgDv6DA2jlMqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm4Id-0004Bs-1H; Thu, 18 Jun 2020 23:50:27 +0000
Received: from mail.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm4IW-0004As-56
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jun 2020 23:50:22 +0000
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id cf85f135
 for <openwrt-devel@lists.openwrt.org>;
 Thu, 18 Jun 2020 23:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=NcZtDTjzBfI4iB98dh7sHbema0s=; b=y9EHX/
 XHCXEaI2tQP9detQg1UXJvMdd5LMnfxUlKYQC3t+R/PB6htTVNzFYqn5fcRA3kKE
 v2igPuVFYx0QoY0D9j3Pw7Vzn9gXhfrFknO2cwGWLgdreIwx99JtU0cz6+pFSwvP
 wzV5qEnwfY+poDjCGqUh/LNprH1q2Ob/2aP1SPideIOZUTffT5XBWZ+10QQq/2+q
 73tvnrRUijJetpLAzRBcBRrDOpNccAGKK+P6fBtXxfk7I1CwyuueMCpuZygpUeBN
 8SDAR2Go7mkIyW2Qar+iccu+o6fXQI6wFWFa1mvarZqGB+zlbdveHL6G7kIfhNII
 nYyf4od7ODv17SWg==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 3fe94d5b
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <openwrt-devel@lists.openwrt.org>;
 Thu, 18 Jun 2020 23:31:57 +0000 (UTC)
Received: by mail-io1-f41.google.com with SMTP id x189so9268425iof.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 18 Jun 2020 16:50:14 -0700 (PDT)
X-Gm-Message-State: AOAM533VbARoeNze8oSlIByUtaCIIO+VOiNIicmVgP61ocDO7rHbWX6g
 zoAySsyRTZuenN+lU2k+vr5tTRMReBnNWG7fv/k=
X-Google-Smtp-Source: ABdhPJyKOuhtQ7hrfmaPzESzGSUlMk2k96LQMLAzN9djbqz4zOUMzlkXNP7YJ7eCRqB0YkINEeWqXRdFc05rSAVipmo=
X-Received: by 2002:a6b:4e1a:: with SMTP id c26mr1364962iob.25.1592524213619; 
 Thu, 18 Jun 2020 16:50:13 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbpu1Lw0j9dtXZPmVS+i-OnopUo+zuqtoQLnABQGw-SqQ@mail.gmail.com>
 <CAHmME9r3nPwmUoYYrj0PnUStd1ACSmdFAO4Qv2cZtmiLspOW1g@mail.gmail.com>
 <CALjTZvbtjVwpyV+AMX4htssTbwTHV45mQeokUr952D_GbtFPvw@mail.gmail.com>
 <CALjTZvZRerzWqaqhY2U=m44n5taLEsY99uEt2=ZNCe27=LYbLA@mail.gmail.com>
 <CAHmME9otC1mOqR2tLB55BVQQpNPvCMUGa1E4jfMYYXNp6_31BA@mail.gmail.com>
 <CALjTZvZ4wqZZ7_Fk-YHaxT9uuWnS4n9dLm4ZXSy1UM3riv+NuQ@mail.gmail.com>
 <CAHmME9qWrBTCsBr7s6oLD0zuBMzZUD2OV3s-tgDwV0W7bb9Utw@mail.gmail.com>
In-Reply-To: <CAHmME9qWrBTCsBr7s6oLD0zuBMzZUD2OV3s-tgDwV0W7bb9Utw@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Thu, 18 Jun 2020 17:50:02 -0600
X-Gmail-Original-Message-ID: <CAHmME9ozm7KiT3rkDpAF=1p_g7QU6-6fxncZB1S4tfm5v2DGqQ@mail.gmail.com>
Message-ID: <CAHmME9ozm7KiT3rkDpAF=1p_g7QU6-6fxncZB1S4tfm5v2DGqQ@mail.gmail.com>
To: Rui Salvaterra <rsalvaterra@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_165020_337031_41450EF1 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] wireguard: unknown relocation: 102 [ARMv7
 Thumb-2]
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
 WireGuard mailing list <wireguard@lists.zx2c4.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hey Rui,

I fixed it! It turned out to be caused by -fvisibility=hidden undoing
the effect of the binutils fix from a while back. Here's the patch
that makes the problem go away:

https://git.zx2c4.com/wireguard-linux-compat/commit/?id=178cdfffb99f2fd6fb4a5bfd2f9319461d93f53b

This will be in the next compat release.

Jason

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
