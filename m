Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC6A10941F
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:17:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+hak2qQPphrvi18w9QRY0iSCkkVPbr0Y/lmUc2LOoe0=; b=TfrrhBk6KXUbWY
	rsIdiWr2iKK5fuRsOykebMBP49DV4imIcNpccTS+TPG3ev7UM0UyUcWkW9MAjgpG48Fk5oIUk89pF
	5Wxz9w6I/t6x2ApWDJ9fUHMHcxRo8m0rol5797mfwY1fwGzSnGQ1mCNZBzXtwzTPlCMjsTV+9Qmmq
	GEqWj+s5ND6etIRxzCmxTO+qFHVPsc+BGB6MdYe28bwlqr9RvSD04jCwfKFhLtaS+Uoza4K7y3qf9
	uDaaIlg2iZoZO0kY9zDLTJZOWtiR+LdnWbTnwjR8xFv1R07F4YXAztWF7kovEUgHf4KheSqC/dJm1
	QgyQtM8di2Og/vINggkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJrM-0004JZ-Rb; Mon, 25 Nov 2019 19:17:20 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJql-0003Vl-OA
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:16:45 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id xAPJGbk9010486
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Mon, 25 Nov 2019 20:16:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1574709397; bh=RylpOAaxhHumJLbaszxUvdvLOSf4kavHSNksm7MIehY=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=KFEZ3bZC7Cd20PH2CD4qddElMIhC7ZdzU94GSeQ5xBI6/tJBqbhmGEnLvzh9cK4fv
 w1gP3yHRRGkMBQuf3RBaTcZQ7iYnlKQ9+F5b8dMUXC93UZHbekIySmE0AepHHDDkso
 eT0TzMDNLt8V8AizZSP01wEcAsrCnbAulqJYKHz0=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1iZJqf-0005J6-5w; Mon, 25 Nov 2019 20:16:37 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Rosen Penev <rosenp@gmail.com>
Organization: m
References: <20191125191340.5980-1-rosenp@gmail.com>
 <20191125191340.5980-3-rosenp@gmail.com>
Date: Mon, 25 Nov 2019 20:16:37 +0100
In-Reply-To: <20191125191340.5980-3-rosenp@gmail.com> (Rosen Penev's message
 of "Mon, 25 Nov 2019 11:13:26 -0800")
Message-ID: <871rtv22cq.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111644_279263_F1F120C0 
X-CRM114-Status: UNSURE (   4.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 03/17] gen_mvebu_sdcard_img.sh: Use
 /bin/sh
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Um9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IHdyaXRlczoKCj4gKyMhL2Jhc2gvc2gKCkVo
LCB0aGF0J3Mgbm90IC9iaW4vc2gKCgpCasO4cm4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
