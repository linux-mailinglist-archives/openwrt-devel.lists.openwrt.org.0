Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D34115EAF
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Dec 2019 21:53:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I18+ljQ3yVvIqHSXWvj4XqLCdOXPJzfpwT2+g7XSRMU=; b=k5mdpEx7646YWOu5rSuRLQ5hW
	zmLKhdbFrfhgquTnTFmWg4ExMxQXsl3W5vk7W0wuYANNzb7wp8WeA6rP6B2cOCqdn2iXdmQb37749
	UhyEMw++/VpbpaMie0+k5t+96fbCv9oUyFiBjeRnVu5DNt95tqH42zBTPwFsjteZjrwi3utb8sSYG
	I3frEUerUsBSYa5byAoGSgbl6s4yXV11b/i2NW6eiWN10YugtvLG8x+ujB/qTNJ53naYWOPM0u7/l
	gyMFrGvzBnsNYITYd/QPDsYVU09LmxPw5icI4HKKn7CBnqOCJ/9FZ/MmPjVtIR5gVbDbxIPA1wjJt
	AtNs7UwxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idh5B-0004oT-6N; Sat, 07 Dec 2019 20:53:41 +0000
Received: from mail-il1-x136.google.com ([2607:f8b0:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idh51-0004o2-3g
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 20:53:32 +0000
Received: by mail-il1-x136.google.com with SMTP id p8so9294067iln.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 07 Dec 2019 12:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1k4aPOhVnwdCQ1Lf+q3v92LCTHEg6VYUaQ9EytcbWCw=;
 b=N7trRMiwQel7cl4qfjLD8fEwg/paK/YOcXqKXECrFZfc6p4kdnpusee8mXKNyWsaN5
 CquJODz8tkjn7Uc2J4f3mMVSC0J1tTAXYWxRXK76rNtJ8s8HaPNdZaPSA5LRua/D4s+D
 nv+5B75xSEqc77tt8g5L1rzdm1FwLE4eHtdXgFQa00QHBOUuyjED+i9K4Z8+3WCFtTSB
 bc07nSoju2OKnaZC1TqKEyu9Sp8oe6HqovDV2d+gMTU4sXmiQ1L2OWKwPVrB45UwQLcx
 GOfSl1HrlYkGZCsER1wJCymXEJy5Advgym12gTrQy+nt8yZN2guLJgqgdOAUVMITcmv0
 cp3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1k4aPOhVnwdCQ1Lf+q3v92LCTHEg6VYUaQ9EytcbWCw=;
 b=dCfAx9/ivqkx1eA0DOG2yKuxCE8ZX5aZcNdF/sDcN5hOexeYKlzsAFAUZRHzHWfR6z
 uz4Xzy2uF/qowzvoUSLLW+j5fFEpesv7nxNqjYj5BDuzkdXQPsiWKs8ilioTPTGOqMmv
 QliCMiP3ZMBWfv8hafFeUirhIUEkNXyKWTAZpO4rp9XIgfz2MtgFqw3XMYIglGczG0Ge
 4BDgkdcdhWp20r8XYPCoyfYPdR0xIAMU65EjDE2lpFhv8TE+vq1e1FsTaEudqM8/C0ZZ
 6XwDZ3CQ6/eN6egeq8221zU0FOJrek5jnKLEY9xhBuL27PQZXXuW5qHCYrCBVR4cGCRs
 a5eA==
X-Gm-Message-State: APjAAAW/capejDu2WQ3R4VzRR/jXAgzLQq9KuqTDd+yy1BrVwco5byX0
 c8EJRE3LqhQukENlWrcKpPhgsyYtrgL8zcgm8UaB7DZ7
X-Google-Smtp-Source: APXvYqxPoaTthPbJaXhdaogUpcKLv7XgWHqYzpreNTpwpyj/4zCp3WC+c+4qwN3FdNiQ3X71q/s1TptvLljaySI1Cew=
X-Received: by 2002:a92:1f16:: with SMTP id i22mr21775306ile.206.1575752006366; 
 Sat, 07 Dec 2019 12:53:26 -0800 (PST)
MIME-Version: 1.0
References: <20191207114547.5209-1-peter.stadler@student.uibk.ac.at>
In-Reply-To: <20191207114547.5209-1-peter.stadler@student.uibk.ac.at>
From: Michael Jones <mike@meshplusplus.com>
Date: Sat, 7 Dec 2019 14:54:16 -0600
Message-ID: <CAJQUmm6fVs_j4wpaZAeciuEVhvkWHBs8wbb5MX-kkkX+VQFdNg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_125331_290745_7402C3C1 
X-CRM114-Status: UNSURE (   3.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:136 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] UBus wire protocol documentation
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
Cc: Peter Stadler <peter.stadler@student.uibk.ac.at>
Content-Type: multipart/mixed; boundary="===============0761036158326813711=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0761036158326813711==
Content-Type: multipart/alternative; boundary="0000000000009816060599235a6a"

--0000000000009816060599235a6a
Content-Type: text/plain; charset="UTF-8"

I'm planning to implement a Ubus client using Boost.Asio / C++'s Networking
TS, in C++, complete with a new implementation of the ubus wire protocol
(in C++).

Is there any documentation available about the Ubus wire protocol?

--0000000000009816060599235a6a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div>I&#39;m planning to implem=
ent a Ubus client using Boost.Asio / C++&#39;s=C2=A0Networking TS, in C++, =
complete with a new implementation of the ubus wire protocol (in C++).<br><=
/div><div><br></div><div>Is there any documentation available about the Ubu=
s wire protocol?</div><div>=C2=A0</div></div></div>

--0000000000009816060599235a6a--


--===============0761036158326813711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0761036158326813711==--

