Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD10B1E1E3F
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 May 2020 11:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lJp550GOxE01KppLMQ/fOMwXeDjZyLmczl1UbmDCIyg=; b=iQN+TkWQZjLmg9
	DTXAjIGhhT7teGiqqNoPFN/dn64WAYDg8QvM2+6yOnj0MyOJMpO1fzTm4GBCsUkdRNzBjdQ7lqBQA
	JLa4DY2mg11H+K+d45/gDPU+EJxZoFRnpa1XF5QRRrzLMkypUAiI5e2UK/54O4uvjxhaI6WA9b15U
	B3Cy/zauzz5Etj+FoZHppadU03+wn8a+GJcRp2yeQVKBejnD8ISsZC/G8JkrXtD0Cbt9mpylLUo9c
	NHitrM0o8HSIJGnig2uZYslmBgLNlTMXoFq3w60NsvqW4OLab1QeBIdfmtdy+sU9DH/PLQ6dugxJy
	lDLrZ0yDgqfpJbOa4tug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdVkY-0007au-H1; Tue, 26 May 2020 09:19:54 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdVkL-0007Y2-Ff
 for openwrt-devel@lists.openwrt.org; Tue, 26 May 2020 09:19:43 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 202so11896137lfe.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 26 May 2020 02:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=FQV9Ff+Xd0BS8a5aLr2BuMHy8MzVfoTOlmMH2JgcpHI=;
 b=f6qxHJj4BreZwRx10Jdx6CETY7agaZ3zZot8Ix2N9/9DiY9fnUdnx223XA0mZYfoc6
 1uMMkfYYfM6uc6cK1U5DY2skBakqyh4J13lbg9eIAWZ4pPfraedZkprymzD00M6CUhcl
 yiOQ99lK4okzHsMe3vnYWv+CbU4g3xIa7kjLH2xthLiogOqb6qVL0teE5zoM4k6ZONY8
 4Dw4l5rXt1rbSZ2EVxgohnp29bpBFk6s98I6URHN63NmkHOjN34bg6y7QeW2Jv5Ge40f
 8tQzxOryJaVhDz1xAmU407EtnxwerZjki1/x2sf7eTfeSf4bGxV2BQ0WQk4AJ62NIAlU
 OO/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=FQV9Ff+Xd0BS8a5aLr2BuMHy8MzVfoTOlmMH2JgcpHI=;
 b=BJLeGf1/mKSXRNXMMLAyLWoh7EnJAJHQaTcQsEV9059vaErmDJa1iEpLB4gavxVcCw
 BqePx3hZgXF4YnfAsvmrPDe1A0cWjugweIejTc0VYuntmO8mdLYSTC9Nst3JtQaSosDL
 SBJiU2EzE+6LkY7m8gF1wu5WdYL/lsokWGtzcD3xDHTHcs5KGhajs1bKn/AnT/vsbQ62
 cxOBViScBqTONiTkeQNT+emFLkwrMfOOjQGE7t0LPi29Xp5mw1ioYAQBhlZ9JNUjsahf
 d/CIOgr8wnog9MUVjxyTdUX9KdXDIAThK5DF+4lXupNOaIJeSixVDOVo6VAMD5YFIQuR
 YT4w==
X-Gm-Message-State: AOAM531zcUxExZ9PWw7DRjIqv5QSIcGdxWxqTkWU+yJQcO2dTINCUzDo
 wEnTmkrfFpwN5VmOTOHUUUc=
X-Google-Smtp-Source: ABdhPJy6a0cIFHoWlBNBk4IsqA+D7boiYA3ChQRaQk75QWHF+Q8P69ixyr5Pi/eGIiBm6JA+Sc8NiQ==
X-Received: by 2002:a05:6512:3329:: with SMTP id
 l9mr59851lfe.138.1590484779455; 
 Tue, 26 May 2020 02:19:39 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id n26sm4143546ljc.42.2020.05.26.02.19.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 May 2020 02:19:38 -0700 (PDT)
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <a34f9de0-0c69-c443-0edf-546fff7b2f53@gmail.com>
Date: Tue, 26 May 2020 11:19:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_021941_560669_9DCF98B7 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] blob vs. blobmsg - simplifying & cleaning libubox
 API
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

* Introduction *

OpenWrt heavily uses blob-s and blobmsg-s implemented in libubox. They
are used in ubus and when parsing JSON-s.

Short summary for two formats by Jo:

[14:51] <jow> I think a blobmsg is a structure nested into a blob
[14:52] <jow> a blob is  id_len (8 bits type (aka ID), 24 bits length) + data payload
[14:53] <jow> a blobmsg follows the id_len and consists of a name_len (16bit) and a variable length name string
[14:53] <jow> any payload data then follows the variable length name (32bit aligned)
[14:54] <jow> I think the extra set of blobmsg_*() apis is needed to handle the blob attributes while somehow transparently dealing with the name TLV squeezed in front
[14:55] <jow> due to that, there's different notions of "payload"
[14:55] <jow> a blob payload is simply the data after the id_len member (pointing to the start of the blobmsg hdr)
[14:56] <jow> a blobmsg payload is the actual payload after the id_len member, the namelen member and the variable length name


* Problem *

Some/many developers are confused regarding what do they deal with (blob
vs. blobmsg). There is single struct blob_attr that gets passed around
but it isn't clear if it contains blob or blobmsg.

Depending on blob vs. blobmsg type a correct set of API functions should
be used. E.g.
1. blob_len() vs. blobmsg_data_len()
2. blob_for_each_attr() vs. blobmsg_for_each_attr()

There are many cases where blobmsg_data() is used for blob format. It
works thanks to some extra check in the blobmsg_data().

Naming is confusing too:
1. "blobmsg" could be "namedblob" or "blob_named" or "blob_with_name"
2. blobmsg_parse() requires passing *blob* data not blobmsg data


* Cleaning API usage *

One idea for cleaning up blob(msg) dependant code was to make it always
call right functions (blob_* for blob and blobmsg_* for blobmsg). I
started looking at this but it's not that obvious.

I realized that ubus method handlers always receive struct blob_attr
that is *blob*. Some projects call blobmsg_data() and blobmsg_len() on
it that isn't 100% clean solution. Of course having blobmsg_parse() name
doesn't help.

I planned to replace all such blobmsg_data() calls with blob_data() but
then I realized that *nested* tables will actually need blobmsg_data().
Parsing fails if blobmsg data gets passed.


* Looking for ideas *

I'm looking for ideas how to simplify and clean blob(msg) API. The only
idea I have is merging blob & blogmsg APIs so all functions get aware of
both types. I suggested that but Felix pointed out it's not a good idea:

[17:12] <nbd> not sure if that makes sense, they're used differently
[17:12] <nbd> blob is indexed by id
[17:12] <nbd> in blobmsg, the id specifies the type and fields are indexed by name
(...)
[17:39] <nbd> well, blobmsg is a layer around blob
[17:39] <nbd> so i don't think the blob api should deal with blobmsg specifics directly

Any suggestions?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
