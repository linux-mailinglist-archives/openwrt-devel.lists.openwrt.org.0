Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F1317D072
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 23:19:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFp6TvwqG8Uq3gOhlHQ85ld0fJCCnvxwoJIkNQnFEAY=; b=MVgoAwcCPhKiuX
	BNXPCsUt+NLfbvDQITXklP5Sj4oO1OO0a7UNYA1unfX4GK3ni7lxXWL8Wj7Pf3lpcoqC1u+nGU1cg
	H1Can76n7kpV97FvTGpJC3bmehfQjlhJcxsuo64dYwEEI9RjgHrGAwVp9MxjcOqRRgJ+WGA3DLlZ1
	Bigf2SJ0V07uW3Jd/+OTIrcQF2y/u+EsRAtPJjLo16HgmcqDooSToZBTAHOfknNMpH8iHQoOiIELN
	uZ/JShksXztTDUBhImwbF/h/ANeJVP7qzSWpy9d2rZZ5TvDR7Pp+GauBsDSAlNZFslmoYwd27D2RJ
	GoKMTpRCRAfyYlWWZ+GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAhnA-0007c6-8D; Sat, 07 Mar 2020 22:19:32 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAhn3-0007ba-E6
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 22:19:26 +0000
Received: by mail-wm1-x32d.google.com with SMTP id a132so6161727wme.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 07 Mar 2020 14:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3/pG62FyqpmX6pHfFJ+S+OJ7eqQAh8Mw2SucsKR6Rk8=;
 b=jrZQp4j4lBq481+dUQOwRUbE2LeoW4+2kjiirSi/UpEO/7yTe6Qxc/s3Ir8MyWmSG1
 3iF2fkNt2TCUEvm70kL6TqvGsiiUHJtVdgYgfsfhFOM3lc0HriXnu9Nrcc84YFBQQ3Ii
 0gOdBb+LjurjziDH0d7LsyzP2ow7f7mPd7LADurG46ODWskDXx5JZYe94jDF0CxcPhOJ
 cDNEOraIhUBNbiBNgE0Q2Sr6kWNRHP8exqhYOk1LqlKBgv1fXvf7AhKQ3SBDhT657VKt
 7B5LKjWgf0TB7JRZIh3QlRzWmxbqYu/B06BLNdJ0GkubQWXq0tSiuAxTfZEHCv4jHXIU
 iuJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3/pG62FyqpmX6pHfFJ+S+OJ7eqQAh8Mw2SucsKR6Rk8=;
 b=ak1mcuVVBfmKvYdSSMN+jzwvH2hTWrIE7US2BOtzmFFHBfli1rMsR6g8sWLaWbozKo
 2y4+LzO6JavVvZS1bZUlvLxhrEAcNbh2sJigkzbQxghS7qaOhkD8wEHxoTy9j1ll60KN
 XVNWstmvco9dD7NjpTohO4dLiuV3KIfFNrWt/GIreYqWqzatPdNC8hKOB6smjBV3Sckb
 n5GwWDOmYWLMG8fCqSE8Kk1MEvACCFmlKQ91uf/mkbaCVrxPn779pu8MH2yt7bWVniKL
 1JOwfphm1iSmj7OMq7rSpBHhEizhfqxCS+8dEKh60PadOBa3OfOcXbTeXJvhptG3HlYR
 8tJQ==
X-Gm-Message-State: ANhLgQ1tL2JLTvl0Fq/BbqTJZmr5HpDlg1RrcFs4w2ZgUKM4qGXk2qnJ
 zNi7UbFtqCzlzJwSmtO4Cn9Wtqu0CUvxCgE85Mo=
X-Google-Smtp-Source: ADFU+vs1tj95cqUIScATKY4v0j4WlxN2MWQYfOu53Fl1usoutAGRc4lS/P5Ld9j0JfVBC63k+T5ARiZb2RunFUxaUi4=
X-Received: by 2002:a1c:c906:: with SMTP id f6mr11685154wmb.16.1583619560145; 
 Sat, 07 Mar 2020 14:19:20 -0800 (PST)
MIME-Version: 1.0
References: <alpine.LNX.2.21.99999.382.2003072252270.20704@localhost.localdomain>
In-Reply-To: <alpine.LNX.2.21.99999.382.2003072252270.20704@localhost.localdomain>
From: =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
Date: Sat, 7 Mar 2020 23:19:08 +0100
Message-ID: <CAJN1KkwcTxFMDs6RS7PvLqM0uCzZ0JZ8frb8oysLs1yrtFTnVQ@mail.gmail.com>
To: Enrico Mioso <mrkiko.rs@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_141925_475049_B099CF2E 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paweldembicki[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Where may I buy NETGEAR R6700v2/AC2400
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
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 mail@adrianschmutzler.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

c29iLiwgNyBtYXIgMjAyMCBvIDIyOjU1IEVucmljbyBNaW9zbyA8bXJraWtvLnJzQGdtYWlsLmNv
bT4gbmFwaXNhxYIoYSk6Cj4KPiBIZWxsbyBndXlzISBNYXkgSSBhc2sgZm9yIGFuIGFtYXpvbiBs
aW5rIHdoZXJlIEkgbWF5IGJ1eSB0aGUgcmFtaXBzLWJhc2VkIE5FVEdFQVIgUjY3MDB2Mi9BQzI0
MDAgZGV2aWNlIGFkZGVkIGluIDZlODBkZjVlMzM0NDA5MmEzOTE0NjhiMTcxOGU0MTJmMGRkMTUx
YzEgPwo+CgpIaSEKTmV0Z2VhciBSNjcwMHYyIGFuZCBBQzI0MDAgYXJlIGNsb25lcy4gUjY4MDAg
aGF2ZSBhZGRpdGlvbmFsIFVTQiAyLjAgcG9ydC4KCkhlcmUgWW91IGNhbiBmaW5kIEFDMjQwMDoK
aHR0cHM6Ly93d3cuYW1hem9uLmNvbS9OaWdodGhhd2stMjQwMC1TbWFydC1XaUZpLVJvdXRlci9k
cC9CMDdMMUhNN1g3CgpQbGVhc2UgcmVtZW1iZXIsIHRoYXQgbXQ3NjE1IGhhdmUgbXQ3NiBkcml2
ZXIgd2l0aCBzb21lIGlzc3Vlcy4KCj4gSSBjYW4ndCBzZWUgcGhvdG9zIGFuZCBzdWNoLCBzbyBo
ZWxwIHdvdWxkIGJlIHJlYWxseSBhcHByZWNpYXRlZC4gVGhhbmtzISEKPgoKSSdtIGNyZWF0aW5n
IHdpa2kgcGFnZXMgZm9yIHRoaXMgZGV2aWNlcy4gQWxsIG9mIHRob3NlIHRocmVlIGxvb2tzIHRo
ZSBzYW1lLgoKPiBFbnJpY28KPgoKQmVzdCByZWdhcmRzLApQYXdlbCBEZW1iaWNraQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
