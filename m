Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BEB190D33
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Mar 2020 13:20:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbnZIkZZ6BIcqYpzfVakKjzat2uHpTJ3F9uOmgtSh0M=; b=nfctaNn9qVDW0H
	FfE3M1z4RyJX9c7dQohaSzQsZooo6TjDBsEcIBvjsd5/u6htt/2DPR9zj6j/efro+U5yuhBZ1STEG
	1kxQGW+5nTLJ/oQlSsGFFycFY7aO+R7S9XwEkO3hQokk+YTLkGgQJYQzHUDVLn54sA/RcyXlc13r9
	HY13jBXpdQjjO0bjYsjIeMcZk36KBRPc9ivvJ3NQKJLmXoJa8VPbrs/sMS7FlTBvi7tlsrotj+wYK
	0cekf9fEBwN1qc8Fzr2aMKrjN13/lAyYWyfqhGYxAXDMNxBVRBM/oFYyk/1kvsLAJoKefa7/60ANu
	+z5rceLp6kcJrzrDmByg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGiXc-0007Fw-1o; Tue, 24 Mar 2020 12:20:20 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGiXN-0006y0-SL
 for openwrt-devel@lists.openwrt.org; Tue, 24 Mar 2020 12:20:07 +0000
Received: by mail-wm1-x336.google.com with SMTP id a81so3116637wmf.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 05:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:in-reply-to:message-id:references:mime-version;
 bh=DBE1iXRItYcujlDTNlgu5uAi/8wEdZjarMtyNSm6uFU=;
 b=gWeVZZPQiDq2/d+ZzO4TDoWxC99NFdQiYlmiu5tJRVvQEnXNcRrAzBjIY4MxGma45t
 w/fWaYGZZUtU0sAafChn+fOW+iEwoXFXZyPllbyF1u59mll5PTY5urmJJw1KQXyK/G8D
 eaGV8HtlPaFYcMatTJfJJDx2Des2usw0w1vzIfPVWk/Bu9y9JPTuzq76346wC8pX8et+
 0hJ0PPUbugRyak06KeClTcVAN+J8dswB1BgVSeIj6VTgJWF//WtB38/G7PgPLi1GqymP
 1+meNtL/LHTobMKrlF2Kj0E2TY+0lrpajUwhheQOeMiWJJTUgPDigLipinDJeXSZMYaK
 42eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:in-reply-to:message-id
 :references:mime-version;
 bh=DBE1iXRItYcujlDTNlgu5uAi/8wEdZjarMtyNSm6uFU=;
 b=ERWPp2hYB+feyvN7l636MlQ+3uGsG/bMEl1DCOcspgf7z0uvY8U49NyDN885TLyOrO
 femRB8Lgkh7k6W6B1E7VLeIbAfdvMkPeDjxqcomAXApz+Cbwt0MBh10ADKI8dz2r4G2P
 MHGhvNJzdEkn0Q7BlpCKrNpl3qjUa8f1/4WK73KS5xuuJIdljaQLYucydkMk6Q8X3kVN
 2m1Tp3CV45q8j1KmJg4cZaIkzyCshwUzmOwUDG2M7u3S/YL7DRiWqnGwtilFwE0FnsR8
 qplZHX18/7NuxEDkqypt6L1NW0YeSJUTlLLKFSczoQAz5WPT+au9tyyLxq4Hx65GFmPR
 o1Cw==
X-Gm-Message-State: ANhLgQ13RJKWS+scYySW4xxtg/IQ6akQpTh49SmXR+7v4C9ztJh3EYg7
 GsE4PZYTannSYANEzSLvckU=
X-Google-Smtp-Source: ADFU+vsWQqpZY2JUdYZYtsuW9G5Pn60c8zAWOfZen1v/MrE/fjKglr67zjDTpOUDz14h0UOwGGC3+g==
X-Received: by 2002:a1c:ab04:: with SMTP id u4mr5277414wme.88.1585052404275;
 Tue, 24 Mar 2020 05:20:04 -0700 (PDT)
Received: from eeeinsomma (host48-12-dynamic.60-82-r.retail.telecomitalia.it.
 [82.60.12.48])
 by smtp.gmail.com with ESMTPSA id u8sm27792482wrn.69.2020.03.24.05.20.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 05:20:03 -0700 (PDT)
Date: Tue, 24 Mar 2020 13:20:01 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Jeonghum Joh <oosaprogrammer@gmail.com>, openwrt-devel@lists.openwrt.org
In-Reply-To: <CALYKT1g3F2o1LBURTN4v29f7ftK9ucxi1SnsMM26hVcGoP3Q4Q@mail.gmail.com>
Message-ID: <alpine.LNX.2.22.413.2003241318500.7995@localhost.localdomain>
References: <e09aecf7-dda2-baec-7237-b86a241f2488@marcant.net>
 <CALYKT1h=0uAMgM8R6TRS-DhnDc92ftVgsxKeAQ91Ls1yvVstAQ@mail.gmail.com>
 <alpine.LNX.2.22.413.2003241157170.7925@localhost.localdomain>
 <CALYKT1hD+HgDsJCOOPk2L0Y=HmZTFPsRrsQXo9c96cygXaPo9w@mail.gmail.com>
 <CALYKT1g3F2o1LBURTN4v29f7ftK9ucxi1SnsMM26hVcGoP3Q4Q@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_052005_957129_0B87A1A6 
X-CRM114-Status: UNSURE (   3.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] How can I include strace into the firmware?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello!!
Sorry, I forgot that step
opkg update
and then
opkg install strace

could have worked.
BTW - with "make menuconfig" you're building a new image from scratch - with opkg you probably would have installed the package to overlay.
And, the link you gave isn't relative to mediatek SDK but to OpenWRt stable release itself!

Thanks,

Enrico

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
