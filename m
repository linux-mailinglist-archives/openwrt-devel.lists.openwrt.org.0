Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6731548B7
	for <lists+openwrt-devel@lfdr.de>; Thu,  6 Feb 2020 17:01:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1xNS3ShMzzBqapi2MNXv6k5BZA/tuPvd07fk6Cfoy4=; b=Fy7dbZCmXhsf7/
	PJ02o3uq+Goz18YxdO1kqRMMcNqUG/k09oq611BKvDZkGHdLbPVDy0LEWktYH8xZ5gSfR2ira2GBk
	CmBqDymn1JfI/H8ot29+vBoVNdevGk8pai8RNwbKW4hXRRVbD2ZKWNCQOuJWu/1GPI+TfyoVB+zPR
	O0tN/0ByKVRmoaP2+XJL0CZAnMk8SkbQshrDcLasvo9PilOfGFNl4aA5UFFJoR+IcTuZPa+r2K+2G
	0r8GmXJyNsUj4AJug7KjSfYYxjrYVm/pCSwEzu5o2MDqFX04W4ModOP5nfxnOm2/l2J2ryUr5GUkF
	ShI6KPkgbbZL5Bo2rLrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izjar-0005fn-94; Thu, 06 Feb 2020 16:01:29 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izjaf-0005f2-To
 for openwrt-devel@lists.openwrt.org; Thu, 06 Feb 2020 16:01:19 +0000
Received: by mail-oi1-x241.google.com with SMTP id i1so5058943oie.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 06 Feb 2020 08:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k1qpSgcA3coOUMht6i1cMF1hkMPcXeMOj+1wtPIeZ1c=;
 b=HCWbTXGvB3hD0uT1eS2b0FmH7wtY27MwlBIto+Z/z9pONgT8rKQr8p29/Lo2cCwzCm
 84+X3N7L3pFNZyYAliHCtvmc1B5YFnTphe9cQo8VAn80SGGjQcxKCIlApox95GTmPW8a
 2WKAVKFwHphiUcsAmRr1ULUSNMnUjdpkJ2POWwIQxCq53fKmEnaixqiVDslvZJbA7f0C
 2ZakMrEFEbJKNQxLikrGXk+2ybwNQnGlQ6KIZA7IP1bGqdxU+9COLt6M6S2/cpoXV28A
 /gGLm0vxrcWzkD49e4ApdeMR5/M+tt2yn3gbhDNpZXsmHuhEYletKOBP5sk6zE2yQzD1
 +upQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k1qpSgcA3coOUMht6i1cMF1hkMPcXeMOj+1wtPIeZ1c=;
 b=L3IQUkrI6NUk0V+BufisZ3hkturmmmDz1u6KPsL7kf3lpyB45JcweREgf8KJn/JZjS
 j4BF90a1AftSbN2uN1judgVgJ9GNxtJq8HU3WASSHGcO5t3EshovP/5lnr+5d6ik/ySB
 KZdn+Ed5qq9ae2GKWu6f1yrIKN/6R1XuU0oS5OYjMmCCIisEAuXwBQrY7d5UzDkOfCma
 67K0iq2v3qdRrl81XMkkZvNf/Ori9J9yxxljLvJoM73yXGpq0/Q1dk2FNaLgUIsgRonk
 GmKLi0fz5ERRQhRcfsCZctLAHrdirSi5Qsx7Gd0RcLYW3y4jtbTTtoVjUqMFusWKTorA
 8dHA==
X-Gm-Message-State: APjAAAX2m1SI8ijKzj0VvIp4zBuSwtu57PR3WeKGZmolAz0Lo86G+9Gw
 rbQW5ShNut/X51AOJH0h+vruJnfxkCakTf+VDn8cBXU82nc=
X-Google-Smtp-Source: APXvYqx0Ol/2NK9AmYA1coAIvgWS5qNnwSydU30onOg/+gnC4Mx4/T7UkW6onVxTWbu+Pa+H45hvEFHK2wEqxoJN9pI=
X-Received: by 2002:aca:1a17:: with SMTP id a23mr7077875oia.84.1581004876584; 
 Thu, 06 Feb 2020 08:01:16 -0800 (PST)
MIME-Version: 1.0
References: <20200205144418.1859901-1-gch981213@gmail.com>
 <c56df957-d2bb-0065-76cd-749cf5063401@gmail.com>
In-Reply-To: <c56df957-d2bb-0065-76cd-749cf5063401@gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 7 Feb 2020 00:01:04 +0800
Message-ID: <CAJsYDVJSgW7wn=KFTiV8AuVPZSKZ437gNoqqNTBXabfi64xXew@mail.gmail.com>
To: Piotr Dymacz <pepe2k@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_080117_981263_AA399E3D 
X-CRM114-Status: UNSURE (   5.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add new ar934x spi driver
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

On Thu, Feb 6, 2020 at 11:29 PM Piotr Dymacz <pepe2k@gmail.com> wrote:
> Don't you think that ~24h for review this kind of patch wasn't enough?

I've sent the patch upstream and got positive review there.[0] two
minor comments there are already addressed in my final commit.
And I've done flash reading and sysupgrade tests on
ar933x/ar934x/qca955x including cs1 test on ar9344.

But I agree that I'm too impatient this time. Sorry.

Regards,
Chuanhong Guo

[0] https://patchwork.kernel.org/patch/11367973/

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
