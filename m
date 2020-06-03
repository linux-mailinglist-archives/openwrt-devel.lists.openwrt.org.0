Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E7E1ECD18
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 12:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4ntazPWLDbxspnsV/cOvlSu4PQ7aCUmJu1UC/0RCso4=; b=o9x2O8PTgODyOzQTv0zhjp/s0I
	JlhZ7IpsZE473Ng1YngJJHj/EpcVt6nhq9aQAHMnnFbHj/fUlWxO9VO4V261rjjtz6whWsNGyII6u
	8w6X0i0fsiYsbg8QKn5HZaakr3fAIaw99EN0HS2sq9YGsd8rTS0rn5fOzxfspvZzzFGhp35NTGDyz
	jG8GvXvaNMll3KDAbPDWSC9N2dRcNc+FDb6rvPcz31LeAQ7Ie78gsrs75NEoNsaOS8LMuq74pq4/y
	2JPgfYER1wWiBNCLYlUklRF6xWW1g0HcS7cNx3fRTqJ4NxqiPu1rmCsD39syBtSQ/TiIAtMANH2zW
	22mIoPnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgQFD-0006ti-2P; Wed, 03 Jun 2020 10:03:35 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgQF5-0006t0-Jn
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 10:03:29 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E5C183EFB;
 Wed,  3 Jun 2020 12:03:21 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id d435dbaf;
 Wed, 3 Jun 2020 12:03:06 +0200 (CEST)
Date: Wed, 3 Jun 2020 12:03:20 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Panella <ianchi74@outlook.com>
Message-ID: <20200603100320.GA3056@meh.true.cz>
References: <DM5PR17MB09230F70AD09E8304B20C222DBEE0@DM5PR17MB0923.namprd17.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM5PR17MB09230F70AD09E8304B20C222DBEE0@DM5PR17MB0923.namprd17.prod.outlook.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_030327_797537_9275738F 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Subject: [PATCH 1/1] blobmsg_json: allow to add
 full json files
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

next time please do:

 $ git format-patch -s1 --subject-prefix "PATCH libubox" ...

as described in https://openwrt.org/submitting-patches

Adrian Panella <ianchi74@outlook.com> [2020-02-22 20:11:28]:

> Current function "blobmsg_add_json_from_file" only adds json file if it is
> an object,  and it only returns the properties, not a full object attribute.
> This version allows to read any valid json file and returns the complete
> corresponding attribute.

...

>  }
>  

whitespace issue

> +bool blobmsg_add_json_file(struct blob_buf *b,  const char *name, const char *file)
> +{
> +	struct json_object *obj;
> +	bool ret;
> +	

whitespace issue

Apart from this whitespace nitpicks which I could fix by myself as well, I
would like to ask you for adding test case under tests directory for this new
function, so we can later assure on CI, that there are no memleaks or other
issues in this code and spot any regression later as well.

Please note, that test cases are not mandatory, but it is going to help merge
your valuable contribution faster :-) Thanks!

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
