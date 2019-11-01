Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC62CEC529
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 15:57:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBccXWzZpfF+DsZl057nbqk+sQlYJH4leZHRe4N3+Aw=; b=K8dETG+90bxPXA
	l8AIwrGCaKvhk4jRKMfdU/iV4AleUMxoCtDpes3WAxVgLljdhA239Xu0BYdAk89ec32AjQeRb/fVe
	DOyTuP4a/3ezHSweaaF/Wur0lfYdvFRtFlFKx6XRUYnyEaUwM0D/tccacOUudjQRKp7BRYQSoW/q/
	lr03LvwnQ3kMLeRnHoWQglKDGOc7kME7mTBI3jFm3EQW9dGOaUdpgfRt8veukc50geKntia4+vcIr
	7OFg4G3nlQR9v01thcT3FZHKdzIOpjruhmEbe4FR1NmGIhZATgcfNGbhM/CDAPPYlyHi/wjRZfZcz
	BLXyJPEhIUEI3qFWm7xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQYMG-0008Oz-8w; Fri, 01 Nov 2019 14:57:00 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQYM8-0008OF-P4
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 14:56:54 +0000
Received: by mail-oi1-x243.google.com with SMTP id v138so8373312oif.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 01 Nov 2019 07:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Tt0bgqbsIoo4Tt0m46YuS8YYPJf13/Vk/LZ+ZeTE4oY=;
 b=slHxTrEw33LUga/MWcDVEm5m1biFdbhXyALDwDqS/ep/R1+RYw/gF1yppt5Q9XE2up
 24q1zKtBPJSZv6+gb3mqwb0k/mRAICpJcGaw5mTbIEZpB2nEnrrmiGy8ebZG7uw3ETaH
 GNV65jvn8GfvY2OZDo8yIRNYGMu4M9p87RcBj2i0LNgpsF+G8mIrPwgk6tcSykmxeO+p
 9Icaem5C6435hQsznMLF1F332hHdWTuvfn2TvxBQQJ5vOyHBkBr0jz5LSZbofF+WfNRJ
 npOsvVlCUhwovHWOlco4TsBqmvkdtMGawh7DkSn2j9q8zKxFamFkV4Pimufhs8zvE9PH
 VJsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tt0bgqbsIoo4Tt0m46YuS8YYPJf13/Vk/LZ+ZeTE4oY=;
 b=eGkxbuSSllz1zmXxu3HXB2o0j90IYBMSdMqQjFWrC9CmYXR2SFVjhtusCrkSCZ7bxr
 wuOnJZd1kExICSiE+xO2yOilfmkN6GCyRWZVRasPxsEKKIVhwJJcfuT8HfSineyD40CX
 Ph2QsK6drVO7ve3dA/HBUzZmPhXVcWSciBCF+zaG9D3MCwGo5u3PTDLuic//sCzPn2NZ
 ei1AEAcu7M+dBdY7YMAd/Q+e4DSmkJmH4veY0AoMWT9su9DnaKvNvyukSQjKrtByBQ6Q
 8LKXuirIh0Rnc9RYc7uDNKq1/nU5eZgPqiBMAVVEQm7ypSQbditJFZ9WynC2qvNM0aFT
 JVhQ==
X-Gm-Message-State: APjAAAWWWJ7xQ1d1nahuhGibo2sQimbnUXNpwvYPLmxogW4/TaOreStZ
 41YztflJPmrBI3oKo57XGey+3gbGVsmxBPak0mQ=
X-Google-Smtp-Source: APXvYqxvDGmT4O8acSft0usnflxm3g81gs/IBKzVPQ3tXD51k8QawLv5M7XZnHuAKnkL+zTnlTmfMHpJS3d3gSYd+oQ=
X-Received: by 2002:aca:180a:: with SMTP id h10mr4373281oih.30.1572620211349; 
 Fri, 01 Nov 2019 07:56:51 -0700 (PDT)
MIME-Version: 1.0
References: <20191101032858.19013-1-gch981213@gmail.com>
 <20191101032858.19013-4-gch981213@gmail.com>
 <004501d59083$775d81f0$661885d0$@adrianschmutzler.de>
In-Reply-To: <004501d59083$775d81f0$661885d0$@adrianschmutzler.de>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 1 Nov 2019 22:56:40 +0800
Message-ID: <CAJsYDVKnuPCHKJF_FO_GnsHmOwq7yOTupsL9PCe76250iP9j-g@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_075652_817046_55AE2541 
X-CRM114-Status: UNSURE (   7.02  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 3/4] mediatek: cosmetic fixes for
 mt7629-lynx-rfb
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

On Fri, Nov 1, 2019 at 3:10 PM <mail@adrianschmutzler.de> wrote:
>
> Hi,
>
> > @@ -75,6 +76,7 @@
> >          gmac0: mac@0 {
> >                  compatible = "mediatek,eth-mac";
> >                  reg = <0>;
> > +                             mtd-mac-address = <&factory 0x2a>;
>
> Strange indent here ...

Ouch...This entire eth node uses spaces for indentation, and the tab
width in my editor is 4 spaces...
Fixed in my staging tree:
https://git.openwrt.org/?p=openwrt/staging/981213.git;a=shortlog;h=refs/heads/mt7629_target

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
