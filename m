Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AECBD11BEC9
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 22:03:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a71j6ol2roHbexOtKpxRiI6Em4pFMghPVAwyz2Tm3w8=; b=L9u4Tz4whZkaRW
	fVgRj3NNHpfIZk/OhRaEMOZHn7kTsPagKWkfydW/HN4dTzl6tRcYH1gUPvSdMp1xW3113ECLVfqUs
	0NvqVjLRcGzXA4jv5sOPum8n34Ji2nFFqKbT2ZoFsYO+r8r5otgI9UFXzIbW1wkPGvVAk9dJ/yRQA
	kdzC38G1bLbB7ovBG2Wp9RWKxV0NQmdEASJck6VUAe6rTTPSZ5HuzwmGnkBL2hLyWkNS5VIW5pRDI
	hsFM/z5gkahvhOHZYHEC1xP/ieDNQG244aFDfTPbuneoksxYplClH0m4E/KO7JedXfU+GwL5nnSTK
	EFoW4DbEtuq7hzVr2IfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if98t-0004DQ-Rc; Wed, 11 Dec 2019 21:03:31 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if98j-0004Cn-OQ
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 21:03:23 +0000
Received: by mail-ot1-x335.google.com with SMTP id 77so7517oty.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 13:03:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=iwiDXrPs9bG+eCHDREBQ+Gvli4KJhKFExp1ZAv0ZEhg=;
 b=Urac1/a04+zCH9hhJFP/5AlGoADj5R3taNFhyQccZ7mCgaT9vi97Ae4jnfehG0UlbP
 JUCxJwrFVrXJj2Oi1P5ZIPglQFFaVvEHmwBIleGVAqDs20o2kz9q719/awI9F1WBrTtU
 fY4m6OJldcGns7eCTq1Yj0i4P9HHSUAwGRpMCuH3JCp2xeUF/4Jt3OuC+LskVDwXYo11
 7ycTptFhn18XH64OLnOCFFE58pCs+I87fgL6IdPW5Ow3Kt6bzKFCXwORC9ET+fKzkOIq
 sQqxCuJCX08YifCgpbGmUPqufPRBemmaBYTtHpIorHevnmtsbkPtd6RGmTw2k2lrn36h
 USpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=iwiDXrPs9bG+eCHDREBQ+Gvli4KJhKFExp1ZAv0ZEhg=;
 b=uLQZP2gjCi4w1/YKlPtBo+plbVSSZTYUJ8ZRF4BW1drXV3XBHBjYPhsfN5CF/tSpur
 04e5KBtG32UM3UqucIHZdpr+gaCDOc6clZfIzCHKyyRCa7B8/OeK+s7KuIQbfBjXwbO1
 ojfqL5PvB8HhFupE3zfS7rFsAbnUYU2NLGNtvK9dsbXjwSwbQriZD234hzWqs3zwxRHr
 OIkgsVV5BHvj57F9Ft4XnKPG7AKqQwNdWRuJ71MfxLr21tS4RBSIxZs1pmVluW/RGWeN
 U6NAJ2LzfEjw1x2FlM+1zqPDXbxIEtxuk8hkTscwzmaTiFz43v5dVS/Rg+DiIjGXCNlw
 Dlxw==
X-Gm-Message-State: APjAAAUkz/uNabsDun4ore66AFJ/fTeE7wCQCBgNCsyonplUFURxYBsC
 lieicYNaCfuOkjjlc02Q6V4ovsUAmLpPA5XACVxDMQ==
X-Google-Smtp-Source: APXvYqyUDKyakOyommapOzYzBwJhRt1vfYZgL9tgXOIBZIOFmMwgYRd9ak8ZARP7vBADbThlgX4Zz8Pe3YF28w8gl+8=
X-Received: by 2002:a05:6830:22ee:: with SMTP id
 t14mr3843993otc.236.1576098200137; 
 Wed, 11 Dec 2019 13:03:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:350:0:0:0:0:0 with HTTP;
 Wed, 11 Dec 2019 13:03:19 -0800 (PST)
In-Reply-To: <20191211142209.GC1371@makrotopia.org>
References: <e13712e.36225d.16ef3b3ec4c.Coremail.rqgxfc@vip.163.com>
 <CAKR_QV+a___R2qsPSf6vtpk+JUPqvt3ZdvTHQA9Y_pFOZ-R6zA@mail.gmail.com>
 <20191211142209.GC1371@makrotopia.org>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 11 Dec 2019 22:03:19 +0100
Message-ID: <CAKR_QVJuZEZZN+WzNWUnGDsiSMrBrD0Q8NWYTsZuQ9OpnCnxkA@mail.gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_130321_798044_66258421 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Inquery
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

On 11/12/2019, Daniel Golle <daniel@makrotopia.org> wrote:
> Hi Tomislav,
>
> On Wed, Dec 11, 2019 at 11:24:21AM +0100, Tom Psyborg wrote:
>> suck it
>
> As a community, we decided to give our self a set of minimal rules[1].
> And even though it is in the last position, rule #12 "Be nice to each
> other." is meant just as serious as all the other rules.
>
> So here, not for the first time, you are using language which has the
> only purpose to hurt other people (for which reason ever, it doesn't
> matter). This is therefore a very clear violation to the above
> mentioned rule. You statement "suck it" (guess what) is also an obvious
> and disgusting example of a masculist culture which hurts our community
> as a whole and I strongly believe we should not tolerate that.
>
> And yes this was a spam mail. And it's even needless to say that
> replying to a spam email in which ever way will always make it worse.
> But that's not the point here and I will not engage in any discussion
> on that matter.
>
> Please learn to behave or leave us alone.
>

i take "us" for a couple of you hire chinese or create dupe account to
spam with your nonsense. otherwise your +1 replies indeed do make it
worse

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
