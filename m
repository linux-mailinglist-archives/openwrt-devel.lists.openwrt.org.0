Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D63F16C125
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Feb 2020 13:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kUKpQvePdynkk5cfJY/CFdAq694evXTtSkKrECTOng=; b=ZrVDoJNarDSipH
	FfASKqvC+khdLe4xz/Q+jXPtouP9cfNSqbF7BYLBx11EqoS90fk6W8tNU/lnhJEct6+ehLqt1tLNE
	hmEagcd/FlVHSw5KR3Gh3i1hKDS6EuQ4vThlM5h5d+ZR39sUxYf2cNoZOzXJGRz7GS6hgpHmrCkPW
	7degcH5lB4hRzwvMnmtworcBjii/0N5fqdqaCBzW/mp1k2Rwi//X6JScf85zcKZz/wK9JDOQwuA0D
	8xVKDQIzBAfORAb2HDzHE7PdDi8hdeAPXOiKeH10pNeWVJL5PieTKDRy84TdeL0yticYjsDbrxG+K
	mIp1MOHQ77lkSSsOOt5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ZXS-0003XU-An; Tue, 25 Feb 2020 12:42:14 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ZXO-0003XH-Av
 for openwrt-devel@bombadil.infradead.org; Tue, 25 Feb 2020 12:42:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=IIurI5K6WfCbDhNSDG/15PaeRlLg2tcEFq8trgHxV2A=; b=V2Hsmy+a+wffeUVyAjWcdVTmJo
 K4aa9mcCjKx1k/ppP+h1lXGZ6xIKMqi7VvOBuqginohURKXlz8SC1MjMulc+jI/k04pI95uRp/6FZ
 bvzRd2CcCS8mmXFqIyUo5PM9o0Qy+Lj4XJDTNipM56vbGW+Xf1ybgIrFQ1e2E7MfXhIS9Glbw7pAg
 JzS/IkbRwzncau+yn4kwBjsBQAlj/1XQbw3B8O5ytBN3y5UN+gMWOrHIAS3Sia6G6pHHZjnmDDW4b
 ZT7rFuqwI757ZwxPUTTHLxPYOBhM3+G7qo2kV4zmI/1yoS3XjRUOBbvtBeGqBlZK4FAe8HhrOAVmL
 rDkIbW6g==;
Received: from mout.kundenserver.de ([212.227.126.187])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ZXI-0003Ss-Oh
 for openwrt-devel@lists.openwrt.org; Tue, 25 Feb 2020 12:42:08 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MsZBb-1jQrPP1AyZ-00tzaU; Tue, 25
 Feb 2020 13:41:52 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <mans0n@gorani.run>,
	<openwrt-devel@lists.openwrt.org>
References: <62d2bb46-dc7b-17b9-7ea9-b7f65ce66750@gorani.run>
 <007b01d5e97e$5b8631d0$12929570$@adrianschmutzler.de>
 <a5d752cc-e273-2522-435a-df83622006bb@gorani.run>
In-Reply-To: <a5d752cc-e273-2522-435a-df83622006bb@gorani.run>
Date: Tue, 25 Feb 2020 13:41:52 +0100
Message-ID: <019b01d5ebd8$f46041f0$dd20c5d0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQLB1vDMSlmiwzOJu50/xv++QVTg/AIjpK7HAdCvkCOmNF+W4A==
X-Provags-ID: V03:K1:5kR6LdQlCLD1kF3Iaw258TbtQp4fQzhFLl3OzKt0OhOxLWiVnW/
 2lJZTvfRJMuBQXBq+HsV31aV2FtESQ4yqJA6iekFOf5KnONce5h037KwyWt0qPVRq8KZU4g
 LX4gPriEYXqJnMKzdjC9lDjbYCIgaFEYLy8VmUS/o3q6hlJv/j09DofMMFuTQQaAS6TPNiM
 XuqBkTnRIu3+oGwARXeow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vNFDU3DFs48=:0NhvC76jhGivSGyBjRNJxs
 fvpU+0j/fUQqiIVua9M1Q4feMIVJ9JWevrg+bKQK321Tl1K/Pf5zzrHBFzutLwBNMfxsA7YpF
 GaPms9tqhCz5HH5oGhwVspgBUZS6GbeyiuX/aJIamPIjSnTv5cp1nRBOTajuhVahWHQ0hopZa
 0qnx32o2Z0l72GHvs8b/yQNoYayyNKYPi2myYTxrMv/kpqWwKxpmFYwmcsk15aLjciNHZltgq
 hpLaf/rIEbsTrZHmhf7EM3guMOmzs6w/mhT0MxmgvsPljUxwlUFs+waPvZwMgDlkTkvLfWRAM
 +Y7DF+Y9b5d2k4fwxCOjgcge7bPFcbs/NEsyeUV9QV2BAUc/xSNaz6QlsG7+hmFiTUoncGBly
 UYdTtIs2yO034Rrgenk5xYP1mbOJ3yeYKkqhxuvpWVeeURt2H2ZPgEYAZd4rbnn1Iy7DzlN5a
 Os5jjkj/YNY9gPsNMppG14B74vTXCR0owOiDvp3vVT9KsfOB+QShcGEpZGfIzneH+8ajcsqtu
 OCANQK40HvqCOdEF/r1gOk+dhMZtGeR07BOCjfRsxEhAMbKFvh7NZHH9keTn6mCwL64gxztYr
 iieqeIjWSE++rduZGlIzVlHjzzCMbvCY9f21ia4KQk8nOjA6gOEjXM8V+egmZi8Q8tg1nVO2t
 ik7je9WpB3og2W+E8C159QaWxJgTYgkWKfalix95Ca9b9AhvQ2ks0n28Pt9KogvZJIgKhV0IY
 THJun4Ui/k+AqLONd/2srUA5iXRH+JFOVvfuoj/T7aMxi1tn6K2Q87a7xf13L7n7XfmyQKOQQ
 WsQ2DIJSlsLq1QagY/bTqcrvGWiM5Vbduj9tT7pu5jB0NpDKCA3zU7CSkHYVuhM7JS6kJmx
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Some questions - help needed
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

Hi,

> -----Original Message-----
> From: mans0n@gorani.run [mailto:mans0n@gorani.run]
> Sent: Samstag, 22. Februar 2020 16:29
> To: mail@adrianschmutzler.de; openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] Some questions - help needed
> 
> On 20. 2. 22. 9:48 PM, mail@adrianschmutzler.de wrote:
> > to make a variable "per-device", you have to add it to DEVICE_VARS, e.g.
> > DEVICE_VARS += DEVICE_TYPE
> 
> I've tried it, but it did not work. DEVICE_VARS is used in include/image.mk but
> DEVICE_TYPE is used in include/target.mk, I guess that is the cause.

The different files shouldn't be the problem, but if you have added DEVICE_TYPE to DEVICE_VARS, every device will need to have it set. Those which do not have a DEVICE_TYPE of their own will just take over the DEVICE_TYPE of the previous device (!), so setting it for one device will effectively also set it
for all the others after it.

The default DEVICE_TYPE in target.mk then will most probably only work for those devices before the first per-device definition. So, if you chose to have DEVICE_TYPE per-device, you will have to add it to Device/Default definitions in all targets using it, as this will then provide a real per-device default value in contrast to the situation just described.

Note that this just describes how DEVICE_VARS works, I have not had a look into what DEVICE_TYPE actually does.

Best

Adrian

> 
> It seems "DEVICE_TYPE:=nas" does two things:
> 1. add more packages to DEFAULT_PACKAGES
> 2. add hdparm in busybox
> The first one might be done in a device-specific way, but I'm not sure about the
> second one...
> 
> > I've once tried to solve this for the same problem but with kmod-i2c-core IIRC,
> > and then quit at some point because I couldn't find the initial source of the
> problem.
> 
> I found it: i2c-gpio-custom. If I remove the package directory, all i2c packages
> are nested now. Maybe scripts/package-metadata.pl has some bugs? But it's not
> the
> main topic here.
> 
> I replaced all "DEPENDS:=kmod-i2c-core" with "DEPENDS:=+kmod-i2c-core", and
> removed
> unnecessary kmod-i2c-core in DEVICE_PACKAGES. And build test (on ramips) was
> successful.
> So I think I can provide a patch for it (though it needs more build tests).
> 
> But what I'm wondering is, how far will we go? Can we add "+" to all kernel
> packages (unless it leads to a dependency error)? If "select" alone is enough,
> then why do we also use "depends on"?


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
