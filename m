Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E680F6136
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 20:42:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4onVyOHlZRSl84Fchpf8ZwqSdwJubUh+KQn7kDPDpPY=; b=S3gn0P/rNC/z/S
	nq3gVmSVj5H5YvoUN3ycRURSBdDADGmi0pQJRdKhSjD24L3Ijn974IDa59+AhmhuXCCbZg4Fuaal5
	1QwmfoqEWKvM5OuOWY77Y5A4p/AVth03XdoDr7a3Btkm1eEtymnLKJCgM3Pt7Mz3QQmxoO8pvGs1q
	rZVOEz/GBA8VEmBlZ6NJPRf6u4+nbeN/jITKfZatDGxqK1PQkfCPUXQTHpmoS+xaDbjBSKgjlhUft
	qA1MmTf4S4QDL2r37XkJ1PifjniygMdh8Rd2b8gue5xWfauSM01fqOKAk9QIPYkL6kbxxaK0IV8AA
	Fdrqdn+4LpDHAJ7mR4Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTWcN-000520-Ud; Sat, 09 Nov 2019 19:41:55 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTWcG-00051X-JC
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 19:41:49 +0000
Received: by mail-qt1-x82f.google.com with SMTP id n4so6256492qte.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 09 Nov 2019 11:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iek5lbcP5d3ApN+u5CKXF5euJGtS2s4S/iqFQ+MnGZs=;
 b=CFRK23phXF3swgEmKTx+RusdZ9C9+5QM+TOKXePFZo4FIV8XJ3y0Ha73TPvI5/N8My
 G4JnMTHQZFFuQnmbecR6ALgGIdumuQ5zovRyuDxdTzxW2okkx2GuGrKVogPOEKDiGv82
 mopj5kdkw9YTg92xm8rtbpM+Xvh+uPVEwh1+isIDolwoS6pUijjFy8Aan8//C22h9ctf
 UDCrMHEfhO04jqiJ7z3XWi5LiWi5hOYG7cgsLK1wj7SgeA0sK9jjsznIICeqT+PAPDPA
 PaZ4eeezZNuQsy3uQamizva+THaWd4URZJWp57Q8l3mjlUNeAxdFG96ZNK2At3fpO3tb
 3KlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iek5lbcP5d3ApN+u5CKXF5euJGtS2s4S/iqFQ+MnGZs=;
 b=TCNYsMp73b3CBZlCIGsCLw1HIJGwnNv5pBOKcRcaaxEp+d2SFQjdxKDnPGQ8a0U3BR
 gHcSer2s3mZbRpE6xEBiKmMaVhadrExQX61ujfDsacPhbIa2MS3t0AsCjsI+YpYPFr5Y
 gt7D1J3zjqB/6/7GA/ERRlUjDd1YTBriR4oyHbHE7XrD5ruq4GJTj9MWCcH3v6TLbsMQ
 zltFGCOhkgWqDDsKox6fbkTdRJIjD8DPGEgl/Hr1Q+t2PCqvFwrIHNsyU8HfHmwyxgre
 nrGJmJEXa5V54rGLBaYtUq0F5eMyWPZcjoBMDDVJEFI6aPMwGIKiN0NqKZojG6XpSsNU
 4iEg==
X-Gm-Message-State: APjAAAX304kNeeYoyAY0y9J8n73KLHTcVyCRdEdHEsU4AfJCg4KQU6l/
 NfI03DhSCO60XLFEweqDsTLomFYHMbF1OmPQj6k=
X-Google-Smtp-Source: APXvYqyRJnWpHAIzTjuJK/KOQlTqyshJx7+Y2OcsUTarUlwGON4JJbtxp9Z1pXKk5Skc8fxqcV9ayqTNsOLqRiniJi0=
X-Received: by 2002:aed:22c8:: with SMTP id q8mr19281361qtc.0.1573328505632;
 Sat, 09 Nov 2019 11:41:45 -0800 (PST)
MIME-Version: 1.0
References: <0fe1f8f2-4236-cc6b-7246-20ffb6afcfa8@gmail.com>
In-Reply-To: <0fe1f8f2-4236-cc6b-7246-20ffb6afcfa8@gmail.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sat, 9 Nov 2019 20:41:35 +0100
Message-ID: <CAJLcKsGAF9htce6a6i4Oc=zR8H+bwwpiH+zEcc4ZznL=OrnNkQ@mail.gmail.com>
To: Alberto Bursi <bobafetthotmail@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_114148_656478_093DBFF9 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] script hook for odhcpd
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, Nov 9, 2019 at 2:43 AM Alberto Bursi <bobafetthotmail@gmail.com> wrote:
>
> I'm adding hotplug.d support to all DHCP events.
> For now only dnsmasq triggers them, with
> openwrt/package/network/services/dnsmasq/files/dhcp-script.sh
>
> DHCP clients like udcpc and udcp6c are easy to add as the client calls
> a script hook with documented arguments and environment
> variables I can pass to scripts in hotplug.d/dhcp.
>
> I'm not finding anything useful for odhcpd.
>
> It does have a similar script,
> openwrt/package/network/services/odhcpd/files/odhcpd-update
> that is called "lease trigger", and currently just calls dnsmasq to
> reload hosts file.
>
> It does not seem to be called with any argument or environmental variable I
> can use for hotplug scripts.
That's correct; odhcpd has no hotplug script support at the moment
triggered by DHCP(v6) lease changes.
>
> I can also use its ubus API to get a list of ipv4 leases or ipv6 leases.
>
> Did I miss something? Any ideas to implement DHCP hotplug in ipv6 server?
What is your exact use case ?

Hans
>
>
> -Alberto
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
