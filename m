Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DB71FA01C
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jun 2020 21:24:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5gkHLOftJQwR2UMQRoY757SyBlstm1YB0b7FQ3krsME=; b=kDU
	wcmOD1PR1Ekutc4V9Bqe4Htrkmrd3XqyCl3iz3NnR+7UPWoKZzAPuZcPD8YrRlwfiIhAoV1DX92fs
	OALy+4Gz9T+kZw9O8f3pbhGW99pBmYuffxVd6PIuyqFo2r5dpwCqvF1/i9ljapwYKsoE0Go5QqH1x
	ysago+qV1AyAreisIgWQn3+1syfhHbxO6AwaxmBCikK5MV8GI4ANxuI7u1YlQ0VVwZ6BInTFYbHNR
	Uag9WEtOndvKnyhK0WhTtS9rzdEYMjSHuj8IPbzvWS+QXMKNgxPD59WJmrKdlicwbj+o9YJ7DgEJd
	8rEoG0E19Jy4ncVMgPD01upBb6TX5RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkui7-0003rO-GV; Mon, 15 Jun 2020 19:23:59 +0000
Received: from mail-ua1-x930.google.com ([2607:f8b0:4864:20::930])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkui1-0003qw-AA
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jun 2020 19:23:54 +0000
Received: by mail-ua1-x930.google.com with SMTP id a10so6072293uan.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jun 2020 12:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=neas1BjKe5bjN3ABjjEQ8YPAFrq2LjjXf/ng9UkxAIs=;
 b=BUJs4TdhpoIp+CMg2gULikdCpRP0jgn4WaC7hByOnRJhzxHC21Lqkgb7Re44n7ZV9q
 dtqUeos5QTmWGEHCM1MWCXsLNmiZr0xY+zrat1XXhUW8ma8zvU4tUhLuN8DML1A+LF0p
 5NpLFrvpPD5JxWu1VYVtlwb+ckDH3Ofm0s9oLDH6w2W84cITdg0JCkAqcotQcV8FB7Du
 CuseS8Fk2FbGy0cispwzRLLvXylRuTcfpcZffr/KdQbACIN1mKxkj5wN8ffaaesjOe5s
 YUFfPMm+vNtzsqQJeGHz0I6JlVe50JRzLAD1vfxdqOUsjQ5wcrhE/J4N08HcuVxyJskJ
 uVGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=neas1BjKe5bjN3ABjjEQ8YPAFrq2LjjXf/ng9UkxAIs=;
 b=hoIwCcoaTryNxniXod/uZY56EGhTYYkwWbtUUqbogbeNzHVatcxuqtTtmHp1WVYqf4
 bijcZX3fqBgj2JpRks5nE9pu7ukPemjygp7p6sE/UgZK7cbgqBrUsF8dncM8UJ69rA4j
 q8uFC/vO6uyYMr9AaR5bDZnQoIT/96yVeccfPi4pocX9TN6zfLim5RF2GTWwjmPNBZ4w
 hAxKILcxJd3V0xk7kVXptQaI7/KpKH+bfuWi26OZnqiqPjQF+9hyiEMAu2herXm7DVtz
 p2QTlcePS59gj4jv1ZCEAJIA+mrCiqaAN4utfm1TWQV7y0zITW/G4lGqoJ3ljFEn6g8f
 AzrQ==
X-Gm-Message-State: AOAM5314gTkwwTtxlTZZdpNCmev/p81RpamoJFM1BTxfIMAKMRaplJ8F
 dWmgUOCjwYAGzs7N/+1fJFydewWIPOGK/EIdsJ0rjKZyBA==
X-Google-Smtp-Source: ABdhPJwCZYc4SUDN0S22c7PwEWUtMqCYr6eblrTA+N0/lpnr4AVAYRrfiJ+S4TE7c+m+huj9jkxB3g7ezj40ZxBjSvg=
X-Received: by 2002:ab0:3043:: with SMTP id x3mr20166505ual.10.1592249030995; 
 Mon, 15 Jun 2020 12:23:50 -0700 (PDT)
MIME-Version: 1.0
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Mon, 15 Jun 2020 20:23:40 +0100
Message-ID: <CALjTZvZTXs6BiLidiHkKOBGJn6KRM2MzPdqsaBqztNoTu1dvQQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_122353_353205_6EC4A751 
X-CRM114-Status: UNSURE (   5.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:930 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] master: mvebu (Turris Omnia): pca953x: unhandled
 interrupts on Linux 5.4.45
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi, again,

As a follow-up on this morning's email [1], I narrowed down the issue
to the PCA9538 expander driver. For some reason, when
CONFIG_GPIO_PCA953X_IRQ is enabled, interrupts will eventually go
unhandled, causing the kernel to complain loudly and disable the
respective interrupt line. I never had this problem on OpenWrt 19.07
with Linux 4.14.x.
Any suggestions (apart from disabling CONFIG_GPIO_PCA953X_IRQ or
passing irqpoll in the kernel command line)?

Thanks in advance,
Rui

[1] https://lists.openwrt.org/pipermail/openwrt-devel/2020-June/023954.html

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
