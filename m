Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9391DC159
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 May 2020 23:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ndBkeCOHjSfUfuRfMw3wvCwSYF4lEq2UKc55lwtvWE=; b=P+8S6JZxVmTKYK
	xm9mHjTOFEYrmf2Gnz7u4AFIFN2baMbLKPdWlXYE94CdWdmlQyTM7WiYnzfMTFB21CFkG3jxHGi+n
	pYBBaJQoilqQgX8i40SHwzTPl/1g6rBTUmrMG/HXDvbbgG31Jbtb2h43ijzZUkv1xVKvtap1havog
	7FZYhlarx3dK7YtZpdP9IKgvZXD1JgE+rT3YCttjRb58kIT8gBsQDhd6ftuobpU0K6iwyxfI+65hF
	mX6VIGl96nSHIdnieFA5Z1Okmxcx8Alc94i8KndKWY1zq8WOSN4hsLfywZ6xcQ8gc1AeEbuxqKwt0
	UmVCv6+aNgaqZkB55rjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbWFk-0000qS-JW; Wed, 20 May 2020 21:27:52 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbWFZ-0000l9-Vt
 for openwrt-devel@lists.openwrt.org; Wed, 20 May 2020 21:27:43 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jbWFT-0004xA-Mg; Wed, 20 May 2020 23:27:37 +0200
Date: Wed, 20 May 2020 22:27:28 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Jouni Malinen <j@w1.fi>
Message-ID: <20200520212728.GF60865@makrotopia.org>
References: <20200512214612.GF1636@makrotopia.org>
 <20200513083817.GA5236@w1.fi>
 <20200513104603.GB20764@makrotopia.org>
 <20200513130103.GA2679@w1.fi>
 <20200513141932.GC20764@makrotopia.org>
 <20200513163431.GE20764@makrotopia.org>
 <20200516205455.GA10781@w1.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200516205455.GA10781@w1.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_142742_034356_8671B2F1 
X-CRM114-Status: GOOD (  24.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] hostap commit 6c9543fcb breaks MESH-SAE with
 wolfssl
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
Cc: hostap@lists.infradead.org, openwrt-devel@lists.openwrt.org,
 Antonio Quartulli <a@unstable.cc>, ringelrobbe <ringelrobbe@riseup.net>,
 Sean Parkinson <sean@wolfssl.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Jouni!

On Sat, May 16, 2020 at 11:54:55PM +0300, Jouni Malinen wrote:
> On Wed, May 13, 2020 at 05:34:31PM +0100, Daniel Golle wrote:
> > I've just built OpenWrt for MIPS malta (BE) with mac80211-hwsim and
> > hereby confirm the problem shows up there in exactly the same way.
> > Also on MIPS malta with mac80211-hwsim, mesh with SAE works with
> > WolfSSL up to and including hostapd git revision 2b84ca4dd work fine,
> > starting from revision 6c9543fcb7 don't.
> > 
> > As OpenWrt might not be what you want for QA, I've been following
> > https://markuta.com/how-to-build-a-mips-qemu-image-on-debian/
> > and ended up with a functional Debian install inside QEMU about 20
> > minutes later. (I had to replace kernel image vmlinux-4.9.0-6-4kc-malta
> > mentioned in that guide with vmlinux-4.19.0-9-4kc-malta which is the
> > current version and exists on Debian's download server)
> > This would allow to run the whole test-suite as-is on MIPS32 BE, maybe
> > even with buildbot.w1.fi...
> 
> Thanks for the pointer. That 20 minutes seemed a bit optimistic for the
> full setup, but I did get this running with buildroot-based cross
> compiler setup. Emulating a big endian MIPS processor with QEMU does not
> look exactly fast, though.. This can get the mac80211_hwsim test cases
> started, but significant portion of them fails due to various timeouts
> and it takes hours--or well, maybe days--to run through the full test
> set (but to be fair, I could run multiple VM instances in parallel to
> speed this up). Anyway, this can be quite useful to have available for
> manually testing some specific implementation details..

I was intrigued by how fast Debian installer went through and after
only a few minutes it booted with a working system, then installing
build-essentials, automake, autoconf, libtool and git.
The actual compile of wolfssl and wpa_supplicant then took several
hours...


> 
> As far as this issue with SAE is concerned, there is actually nothing
> wrong with the calculation results, i.e., all the values are correct and
> I was able to get SAE completed with the current snapshot.. However, it
> is really slow. To the point of taking close to a minute to complete
> authentication. I'd assume you are seeing timeouts from this or just
> giving up on waiting before the operation is completed.
> 
> While the current standard version of SAE is inconveniently slow on low
> end processors, it was not supposed to be this slow. It turned out that
> the real issue here is in not exactly ideal implementation of the
> wolfssl wrapper function crypto_bignum_rand(). This function is expected
> to return a random value between 0 and m-1. That is what the function
> did, but it did that by finding a random _prime_ double the maximum
> length of that range and then scaling to to the range which is
> significantly harder calculation (took around 40 times longer than
> needed in some of my tests) and completely unnecessary for this
> function. This commit fixes that issue:
> https://w1.fi/cgit/hostap/commit/?id=eb595b3e3ab531645a5bde71cf6385335b7a4b95

Thank you for finding the cause of the issue, fixing it and also for
the detailed explaination!
I can confirm that your commit does fix the issue on the QCA MIPS
devices which were previously affected, they now reliably connect
instantly now.


Cheers


Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
