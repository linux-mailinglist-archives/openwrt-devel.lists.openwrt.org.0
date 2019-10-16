Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5E9D96C3
	for <lists+openwrt-devel@lfdr.de>; Wed, 16 Oct 2019 18:16:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ivu0M8Rq9niBq9nPxo+y16co4Ss54Q+s/jiNi6IMK38=; b=BhYmYaGLCihJTD
	9bqNPt/IGDbWb3YsAQNqsfdKwz0Tdx614X3CkqLMkp5yGgYSuB/DKmsXjCoR03N/o8Nm7Sf4Nrk5C
	ziNNccxTL+tYQbOb/DTHVp9klLO5E8TeAxnus+VOnqzNHg6VrVXDdi6PGAX69w9sG5+B4M/sFzqC7
	nG6YXUqgVY9LZSvzCbfaFdsWtq4c59Sz9ETNs09hJ3RXgJqgNbwTYm/OR99+xiAqsK448Um14Xt96
	vyDvpsqroIRIevNRPllZV6i/TiA5CDfp3CpyvC0plH+vMjdPHVbWESZyrlwnnKV674uUEKe/+PMYs
	aMv2PViX71ccY7I4ZLqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKly0-0003dW-Lt; Wed, 16 Oct 2019 16:16:04 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKlxt-0003d1-48
 for openwrt-devel@lists.openwrt.org; Wed, 16 Oct 2019 16:15:58 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iKlxo-0003j6-IE; Wed, 16 Oct 2019 18:15:53 +0200
Date: Wed, 16 Oct 2019 18:15:42 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <20191016161542.GD2858@makrotopia.org>
References: <1a036c8b-e6e1-3607-33a2-949959e4ea85@gmail.com>
 <3c737b41-b26e-f387-683f-ee378062686b@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c737b41-b26e-f387-683f-ee378062686b@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_091557_163245_A1946C05 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Mon, Oct 14, 2019 at 11:11:34AM +0200, Alberto Bursi wrote:
> =

> On 11/10/19 12:59, Jo-Philipp Wich wrote:
> > Hi Bj=F8rn,
> > =

> > > Or: Start discussing the release blockers here and now. Thanks.
> > 1) Blocker: LuCI master needs to be backported to 19.07
> > Time estimate: 2-3 weeks
> > =

> > 2) Blocker: All relevant sub-components for WPA-3 + GUI support, such as
> > hostapd, iwinfo etc. need to be backported to 19.07
> > Time estimate: 2 weeks
> > =

> > 3) Blocker: Some weaknesses in libustream-ssl client certificate
> > handling need to be addressed, which can only be solved by an API
> > redesign. Band-aid fixes available but not merged, nobody worked
> > on API redesign yet
> > Time estimate: 1 week
> > =

> > 4) Blocker: Need to assert the state of the Dragonblood WPA3
> > vulnerabilities in 19.07's hostapd
> > Time estimate: a few days I guess
> > =

> =

> Is WPA3 support so critical for 19.07?
> =

> I'm not aware of many client devices that actually need that (i.e. cannot
> use WPA2).
> =

> Imho if it's not ready for a stable as-is, just postpone it and tell peop=
le
> that need bleeding edge to use Master/snapshot

I agree that WPA3 support may not be critical for 19.07. However, we
announced it would be the last release which includes support for 4/32
devices (which anyway are not very suitable for WPA3) and many
firmware projects downstream are awaiting at least a release-candidate
to work with for a while now...


Just my 2 cents...


Cheers


Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
