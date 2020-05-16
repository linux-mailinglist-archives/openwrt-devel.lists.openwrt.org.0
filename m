Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DD11D6414
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 22:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zn9mmSxTCehi5bjW1o0qd7xoSjkAC3mrT9MMxC5L2Qo=; b=NJozPyFkzUuKLU
	NwRSal6/eh0C7ft66e0azbIdPWE/UJQPcc9Ac2KVpSeZi0vyekz31aQmwRP1NApO/hm2Ii4rl66Zb
	IQTyfq3ZOT4HY1IaGSOMuFOKleJHpp8JOXW+SYt20s1Ao8Y5QR70ao/fHdahDAZQpFwzpZcpil3Gn
	wfG78yZQsYz4DSYMdIVy5KK77IHgBRV0vMcBsST/zNgJdz1qx7yus11+9Ys4TBedkYjBoaX0Q02DY
	5g9SKmtCNZowRyZGwd2ETCJYHrogqyw8w+BjjAOoQcXhM9guYJ09U2S211pZUVzNN6mjQ+Jehhd/i
	iXbEvJqvVKYyqD4AC5JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja3rA-0007q6-2Z; Sat, 16 May 2020 20:56:28 +0000
Received: from mail.w1.fi ([212.71.239.96] helo=li674-96.members.linode.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja3r3-0007om-Nv
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 20:56:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by li674-96.members.linode.com (Postfix) with ESMTP id D9EDF119E1;
 Sat, 16 May 2020 20:56:17 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at w1.fi
Received: from li674-96.members.linode.com ([127.0.0.1])
 by localhost (mail.w1.fi [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 900LOZEvbJA7; Sat, 16 May 2020 20:56:16 +0000 (UTC)
Received: by jm (sSMTP sendmail emulation); Sat, 16 May 2020 23:54:55 +0300
Date: Sat, 16 May 2020 23:54:55 +0300
From: Jouni Malinen <j@w1.fi>
To: Daniel Golle <daniel@makrotopia.org>
Message-ID: <20200516205455.GA10781@w1.fi>
References: <20200512214612.GF1636@makrotopia.org>
 <20200513083817.GA5236@w1.fi>
 <20200513104603.GB20764@makrotopia.org>
 <20200513130103.GA2679@w1.fi>
 <20200513141932.GC20764@makrotopia.org>
 <20200513163431.GE20764@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513163431.GE20764@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_135621_912074_1660F739 
X-CRM114-Status: GOOD (  23.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Wed, May 13, 2020 at 05:34:31PM +0100, Daniel Golle wrote:
> I've just built OpenWrt for MIPS malta (BE) with mac80211-hwsim and
> hereby confirm the problem shows up there in exactly the same way.
> Also on MIPS malta with mac80211-hwsim, mesh with SAE works with
> WolfSSL up to and including hostapd git revision 2b84ca4dd work fine,
> starting from revision 6c9543fcb7 don't.
> 
> As OpenWrt might not be what you want for QA, I've been following
> https://markuta.com/how-to-build-a-mips-qemu-image-on-debian/
> and ended up with a functional Debian install inside QEMU about 20
> minutes later. (I had to replace kernel image vmlinux-4.9.0-6-4kc-malta
> mentioned in that guide with vmlinux-4.19.0-9-4kc-malta which is the
> current version and exists on Debian's download server)
> This would allow to run the whole test-suite as-is on MIPS32 BE, maybe
> even with buildbot.w1.fi...

Thanks for the pointer. That 20 minutes seemed a bit optimistic for the
full setup, but I did get this running with buildroot-based cross
compiler setup. Emulating a big endian MIPS processor with QEMU does not
look exactly fast, though.. This can get the mac80211_hwsim test cases
started, but significant portion of them fails due to various timeouts
and it takes hours--or well, maybe days--to run through the full test
set (but to be fair, I could run multiple VM instances in parallel to
speed this up). Anyway, this can be quite useful to have available for
manually testing some specific implementation details..

As far as this issue with SAE is concerned, there is actually nothing
wrong with the calculation results, i.e., all the values are correct and
I was able to get SAE completed with the current snapshot.. However, it
is really slow. To the point of taking close to a minute to complete
authentication. I'd assume you are seeing timeouts from this or just
giving up on waiting before the operation is completed.

While the current standard version of SAE is inconveniently slow on low
end processors, it was not supposed to be this slow. It turned out that
the real issue here is in not exactly ideal implementation of the
wolfssl wrapper function crypto_bignum_rand(). This function is expected
to return a random value between 0 and m-1. That is what the function
did, but it did that by finding a random _prime_ double the maximum
length of that range and then scaling to to the range which is
significantly harder calculation (took around 40 times longer than
needed in some of my tests) and completely unnecessary for this
function. This commit fixes that issue:
https://w1.fi/cgit/hostap/commit/?id=eb595b3e3ab531645a5bde71cf6385335b7a4b95

-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
