Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7818ECF20
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 Nov 2019 15:22:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g1zLR38GfdQYKP3SheEG3BZai6IvThIPNa7Q5L42O6g=; b=NhsTaEguSirzR10V2SK2VIg6z9
	l9clpUEYMJfByPOPF4GGUFbyxBJ3YMTbYKRMEs0TIL55rTgLLUnpLncgOztYMNFStKtd6f4OXeOHF
	dmnoRwe26ANLrR/ZvHWJ52HzrVkqNZngYh8jjdytVVAXT/r5NPXRonmAjeZdzgjUnVa30vTI3Ad0w
	6de6asNleSMxWsbilVxW8yXVtBXo8bhXZ1rXYG80lWSgxe/V+l40Obf7jBI4cCz6wbkAwO3ovZaI2
	O0sIuH9hCXzdZzl2cso9/Wn7WY8xXcMG033HOdgYo0b1VDfoMsW1lE04vgssuCKoFP1Kcis91nKLk
	eqthFxOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQuIh-0000E7-7a; Sat, 02 Nov 2019 14:22:47 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQuIZ-0000DI-AA
 for openwrt-devel@lists.openwrt.org; Sat, 02 Nov 2019 14:22:40 +0000
Received: by mail-io1-xd42.google.com with SMTP id c6so13852506ioo.13
 for <openwrt-devel@lists.openwrt.org>; Sat, 02 Nov 2019 07:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=sgGYdXSW82rjssrbw41OOyX4J+GwWxGvVUXLXgpVOek=;
 b=c5CCAuj02IoGXU+zf1AmvH0525KBLhQ3Ad5U15eofrbGv2+TXq2a4mhuSirCmJcFSV
 zN8s7pP9hnrLRfrJsv24KE2L3H1pze2ovPCdpO7mwIsIAhKlqkXn+xf6Pa4kRiv0iLo/
 RJFaPt5pjvkHZvexpiDImyxnx4yLozCx0dEiJExLmH7vxJvQJLOKPp5V4ATAkEv9CO0O
 6LJBCXS26GFhBh0ibX+lsMmOp84nZmZfQN4fzXfG3gYpXzJJcp0+PBwz9L0ouAddqpGQ
 YTxKAN3XsxXd5UuxONXZJ+h6S9/w5BbYwUdYoh41cTXaTg+fcJ0lQRXZZFU9cqIBWUGo
 fz1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=sgGYdXSW82rjssrbw41OOyX4J+GwWxGvVUXLXgpVOek=;
 b=f4RwjkprKHv7YlDVa5o8/i2ctLlt6Q6chQzDH5PsYJgVfczoMz9Kf0cvW+YrubpeT4
 gEnVvG0vlp1cqDhmnsugp2UcLGJC46RrxHhU6mPjusG/RsHjR5Za0M6irkf8Lf7oD5kb
 WjGJHOo6BoXj6XaRhnCToQz5VWAc8GH4qfFjQ/VxlU3b7Xo3MvK50TQkpHPgyswDw7HT
 7pJbag299Sg4OXwe0zN4C5JnF/9pFPP3XTZ5AQ1sHb9dK1olIJcpbGZAupWgGMtUYKEx
 YndJ5ckldLy4IlzFs/Mxq+5dPoTy2Fr5LCgYhwG3k7g6uCDlpCJbnfM54J3Dks7fDIkZ
 rWkA==
X-Gm-Message-State: APjAAAWqCeX56Jn/prnWL+Ft+211zhJg+S1g5BUFrlW3ZHzCxI9A+VdG
 kYMOcpJ/KS1/8BO7DvXu9EeEPds8+GWhAgoNkM0yMtIy
X-Google-Smtp-Source: APXvYqzN698Z2thBi+Rwcc6rcNBKLO4rp68fThAyrAZ8/ukVEVN1Tn/ib1WPFNtyfQHwULPk2ZOy64Ly1CQ1CxCVhuw=
X-Received: by 2002:a6b:7e49:: with SMTP id k9mr15917465ioq.288.1572704558045; 
 Sat, 02 Nov 2019 07:22:38 -0700 (PDT)
MIME-Version: 1.0
References: <20191102141855.22192-1-kristian.evensen@gmail.com>
 <20191102141855.22192-2-kristian.evensen@gmail.com>
In-Reply-To: <20191102141855.22192-2-kristian.evensen@gmail.com>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Sat, 2 Nov 2019 15:22:26 +0100
Message-ID: <CAKfDRXhW1A7m4r1sCori-ekjLqO0LNrm_mEg_NMjV7qUndRNvg@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Mathias Kresin <dev@kresin.me>, 
 Alex Maclean <monkeh@monkeh.net>, musashino.open@gmail.com, 
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_072239_385149_B4F8460C 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v3 1/2] ramips: Update ZBT WE1026
 DTS-files
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpPbiBTYXQsIE5vdiAyLCAyMDE5IGF0IDM6MTggUE0gS3Jpc3RpYW4gRXZlbnNlbgo8a3Jp
c3RpYW4uZXZlbnNlbkBnbWFpbC5jb20+IHdyb3RlOgo+IEFja2VkLWJ5OiBNYXRoaWFzIEtyZXNp
biA8ZGV2QGtyZXNpbi5tZT4KPiBBY2tlZC1ieTogQWxleCBNYWNsZWFuIDxtb25rZWhAbW9ua2Vo
Lm5ldD4KPiBBY2tlZC1ieTogSU5BR0FLSSBIaXJvc2hpIDxtdXNhc2hpbm8ub3BlbkBnbWFpbC5j
b20+Cj4gQWNrZWQtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+CgpJIHdhcyBhIGJp
dCB0b28gZmFzdCB3aGVuIHNlbmRpbmcgdGhpcyBwYXRjaCBhbmQgZm9yZ290IHRvIGFkZCB0aGUK
b25lcyB3aG8gaGF2ZSBBQ0tlZCB0aGUgcHJvcG9zZWQgY2hhbmdlIHRvIHRoZSByZWNpcGllbnQg
bGlzdC4gU29ycnkKYWJvdXQgdGhhdC4KCkJSLApLcmlzdGlhbgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
