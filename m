Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB27D12D9CC
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 16:29:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qLhdjT3AlJncOLDx6i+jvYgn5SQZavfZq5lXe1mWBqo=; b=joehLeSt811thu
	BrQePEyiEGChFzgfaM4afjagEQpSQW0BjkHOH4ThWttatZfnsmqXA9NFBLSlX6VBqyJAFY2PCt9HO
	A4wp/0OzpmT6LfgRVJJGAEe5Jw75qfEJZqBARpj/7VKa1Hs3VPmlAvvcyTt3GBNolDFScwKwiNCWb
	fHqi0hyATSrDLSpNPkTJKL7saUZpVMZBN2FumrvmVvhfoW47SK68z/iyCXKIwPEl/bhbB0qelqIpc
	AXkpH5r5+wYZ9JIr1dIr4d3qrtd8GGBxAMCxBW48p6SlqBo3Dl3PUt6LpmF/DlCeE5S8RMV4SWAVY
	PEO6tcR5d1RHESD0JiFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imJSi-0003w2-Tl; Tue, 31 Dec 2019 15:29:36 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imJSb-0003vk-Nz
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 15:29:31 +0000
Received: by mail-lj1-x243.google.com with SMTP id y6so28593585lji.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 07:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+xprIU8hGjuac8s0dZ3kqWAvjYAjcRddyOZsmer0pko=;
 b=GNda6Eu9jbpl/Rsch0xfs3frZJznZjXIy7oVQpObom2kfsLid3idAKdAn0zcWrlcOX
 S7zBr6mzG22DqPuI8RIjsxXL3E1RVMaUvQVeRpScY6wSRdFeVRShF0RZ02HBWGZXsFpH
 SyarJ0BGx4obim3pNlRVlaC7GnFlD4ymn/uyx4kUvXWjBRsqZd2jhm5v5+AVAwlU5K+B
 zypZJjcIz9IdJbjbIzPaKYxPgokEhK6xkYJEwCztZaOoalTpcvjDtifc01mkCyW3TOp1
 yIaSY7aCgwKgg3KCcWVoSsQno1zZSDMf4OF5rdytQwy4sAKEp6FKykW5cLu7UGq+5sbL
 tG8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+xprIU8hGjuac8s0dZ3kqWAvjYAjcRddyOZsmer0pko=;
 b=qA9MNRGm1zdki7bkl8Xdy93CwcAoZpWudkkrm/3O4jHzyXfJdApZR6h9PQrxuq9gWM
 Kgo7BLFg2eKkxD3HLnlBtMWkbjwhRWh2uDa2eF+SUNRKsAeIwCWf9ru7aXR8A4j0ITR2
 ohC0+mhjflhK3R0vlYp8wyptpUaTv/clGIVGmsASfegMEjhQFMubQxOww2UzN72Ok1Os
 QtQnmC2dcLiaribVGpkmwVy0eL4k0vvFArZTUXXKrXK+u7Egjd44wu1d+Ei9vf6e6s3e
 1Jqyq/VzzEmZnpSG+nhtcuSm8g3eEEoNsJ94aoGpeBiLFhoIYogVjgetm3Ducis6CNX3
 zPOw==
X-Gm-Message-State: APjAAAWdwPtRNwTUkiJRF/UyJsgyXpRXHKDKoiJwP/Lw6Poh+BZaG6tJ
 I7tWfSOTcWzFW2VyNyoevdM=
X-Google-Smtp-Source: APXvYqyvD04m84p7HuwKYisnoqmUJLBflK+Kl6xhPGeHgOwHEeCbS6FvF9UpW1UYWo44oQgWFc5u+w==
X-Received: by 2002:a2e:7c08:: with SMTP id x8mr35778916ljc.185.1577806166985; 
 Tue, 31 Dec 2019 07:29:26 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id m15sm19814219ljg.4.2019.12.31.07.29.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 07:29:26 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBVFTNCm030732; Tue, 31 Dec 2019 18:29:24 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBVFTMGf030731;
 Tue, 31 Dec 2019 18:29:22 +0300
Date: Tue, 31 Dec 2019 18:29:22 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: David Bauer <mail@david-bauer.net>
Message-ID: <20191231152922.GQ11377@home.paul.comp>
References: <20191228140048.GO11377@home.paul.comp>
 <9f716d9b-4230-b3e0-7e38-78c4c4781a78@wwsnet.net>
 <36732b2f-c95a-5749-e028-653a9f8ea4f8@david-bauer.net>
 <bcd2f7e5-abad-3b9c-7a62-b79bd6b424a6@gmail.com>
 <20191231141559.GP11377@home.paul.comp>
 <3dd75d93-e74f-6831-51f0-d2100fdbc1db@david-bauer.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3dd75d93-e74f-6831-51f0-d2100fdbc1db@david-bauer.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_072929_805887_67AE912D 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Preserving configs over sysupgrade on
 ath79/tiny broken for some boards (on 19.07 and master), possible solutions
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
Cc: openwrt-devel@lists.openwrt.org, Jo-Philipp Wich <jo@mein.io>,
 Piotr Dymacz <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello David,

On Tue, Dec 31, 2019 at 04:20:29PM +0100, David Bauer wrote:
> > If no users speak up probably it's better to remove all the support
> > code altogether to avoid wasting maintainers' time on it?
> 
> The code is not really an issue, as there's not much code dedicated for 4M
> devices. It's mostly their device-tree, which is maintainable compared to the previous
> ar71xx boardfiles.

It's still an effort. People spend time writing patches, reviewers
spend time reviewing, maintainers spend time merging and we're now
spending time discussing.

> As many people still use these 4M devices

Judging by the amount of replies from active users to my mail
(apparently zero), not many. Probably those who're using do not plan
to upgrade firmware so can't care less. Probably they're perfectly
fine with sysupgrade not keeping configs on those odd inconsistent
tplink boards. If they are not speaking up, I'd say keeping the target
is actually harmful.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
