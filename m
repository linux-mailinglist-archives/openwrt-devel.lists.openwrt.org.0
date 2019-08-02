Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E910A7FEEA
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 18:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgd1bO84j+jud1c68FstCPOt7NXJAZ+6ImseRb6KvXc=; b=b6VXbRBaQvurP3
	LCONAv9TXOjUvIbHDsl4F4EKB0eMSi4n+OOMppPy14qy7RmGGl/BJQICcosP7LIyKMAV/q5M1bd2k
	QAyMMa0yccfJKs+cAppsU7xliPGrHufi2BQ1n9nfHq+XP2v2Vf4tBZIUtX367vQ+80ZW6Y7IM8Vj0
	E7ggPctgt19qGrBtBXrKyhNXx+k0ei/WqSeS777N3au1PjzuH7bIop9Q6u21LaUz8XN8TaQ3CwQu0
	bmkdNnNNDcnYyRZhsVqNQHpTSkZl5ihTJzlW4hrCv/Ezp+xYfdb7A1TpWXJPuEaQp72Zg502DyVB0
	dg0PWUmm18+VwxosaUVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htaln-0007UB-27; Fri, 02 Aug 2019 16:51:07 +0000
Received: from mail-io1-xd31.google.com ([2607:f8b0:4864:20::d31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htalh-0007Tp-Lm
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 16:51:02 +0000
Received: by mail-io1-xd31.google.com with SMTP id j6so33771466ioa.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 02 Aug 2019 09:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5g+tYaTdvIthUAL8CyZJAhnzrorIUbwbuAyC+IDUgTQ=;
 b=AfWQi/1kUmnReL58jI8hMcwiRXLuZdH/Tyyh4gHtrDo0mDPvqX7Fg/GGP9Adimp7re
 e29qXR0msVv1VME9EC132oEsSjojvfypnKtOuGIFPkgO5LSkIipCSKRLgywlw5bXSY7N
 3JaFdX0C0gWR7F8CZqzkJl/npFwXCysL8KX85xdYSaEIWVPo2MhbbmbdITCC+5fdQkUK
 fvuO2iUAvA9GkzYl048uJmwrorTpoXJiF+J9WaOuSFM7n4tt9SZPAF2Ml5fL6DLU+y2H
 04k/4LJ4Iy53pFdlF8N59MzNdDVr5/FZDz/81KASmln3lfjeUOqAGl7SitGYCk+TBmnP
 6MIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5g+tYaTdvIthUAL8CyZJAhnzrorIUbwbuAyC+IDUgTQ=;
 b=Y7iIRmE3Pfx1cZVvXrtYNZ6Wnv6/uIQVXHoA0nwgLayipieoBGSOqpQ9Rda0TLeQNI
 WtHeQ7N9HKxT4mzV0kezvALPZsWYHYHpXycm0kUu5QUX7+kfoh+t3JFHlWSesF7x52Y4
 bqIUjqLf3iQ2bFO7coDwjhnCnkoG+51gx5kLjQzRUEQaQNoTjpnaxQ8iS8/nxn4lD5EI
 1VbHaRFEKnYY7QE/MY+xkedq1xJi5LIgryJamQxhHWTwY7VU3FXfnDn1fojZMssWwFHv
 XuaT5HwUNKQ/o446nwmekIdxYPUj93pMzwhc7aA/SW44PqTVyizIprUfWEXJtgsTv1r3
 pLmQ==
X-Gm-Message-State: APjAAAXKnb4F9ve6/tesZuYaiY6IIt0epHekpjoqlRi+PgVon8+4aiSz
 py1xgbI1Nwy16NVXwf6quJzCggspaoCdu6dWsnE=
X-Google-Smtp-Source: APXvYqzg6SZ6Rw/ey3ox/kjorYBU1Mpsz5mcU+siW9kwaSAcEvrtDM2WPGjZNYRGesbIUCYvPG1deADsTI+1DPFpn2c=
X-Received: by 2002:a6b:c081:: with SMTP id
 q123mr50883496iof.210.1564764659379; 
 Fri, 02 Aug 2019 09:50:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Fri, 2 Aug 2019 19:50:48 +0300
Message-ID: <CANoib0Gt1WUtGGXaXp=iFu5ejPA1GkhevcquxFGVEHohJrwR4A@mail.gmail.com>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_095101_716897_95D9DDEF 
X-CRM114-Status: UNSURE (   6.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d31 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to
 interrupt-driven gpio-keys
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

0L/RgiwgMiDQsNCy0LMuIDIwMTkg0LMuINCyIDE3OjQ2LCBBZHJpYW4gU2NobXV0emxlciA8ZnJl
aWZ1bmtAYWRyaWFuc2NobXV0emxlci5kZT46Cj4KPiBUaGlzIGNvbnZlcnRzIGFsbCByZW1haW5p
bmcgZGV2aWNlcyB0byB1c2UgaW50ZXJydXB0LWRyaXZlbgo+IGdwaW8ta2V5cyBjb21wYXRpYmxl
IGluc3RlYWQgb2YgZ3Bpby1rZXlzLXBvbGxlZC4KPiBUaGUgcG9sbC1pbnRlcnZhbCBpcyByZW1v
dmVkLgo+CgpXaGVuIEkgcG9ydGVkIERJUi04MjUtYjEgdG8gYXRoNzkgbGFzdCB5ZWFyLCAiZ3Bp
by1rZXlzIiB3aGVyZSB2ZXJ5CnVucmVsaWFibGUgYW5kIEkgaGFkIHRvIHN3aXRjaCB0byAiZ3Bp
by1rZXlzLXBvbGxlZCIuCkkgZGlkbid0IHRlc3QgaXQgc2luY2UuIEknbGwgYmUgYWJsZSB0byB0
ZXN0IG9ubHkgbmV4dCB3ZWVrLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
