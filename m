Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9149CBF5
	for <lists+openwrt-devel@lfdr.de>; Mon, 26 Aug 2019 10:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/1/fX9xQNWnbghTFQPzJvxWiBF2NUNnEQ/4J9GgDfgU=; b=kan23M1zF4/9ys
	y4uxgv7wc63R512HAayHHs8okNoTX90bfJaqn+EkrZVZkeyH9yBTF8DH+9yqzmqb/lZt/BGT/3HBN
	GynYnhXhI/fjnKrp1JW03IHbn8fN8mWx/eptrcL1Gvmi+E7xj0qrE1H1faEA8ApbGS4donwlOMwK9
	E/XCNUpOmHvGUOorYvqHvX7f1ZbhDypji1IJd8ZrW4+YnNhTCJAidkErGXHNicBLhzNylFcNpEvmQ
	kFnnAC3/uzoC+3LnthBKTnq+BgAeYP6BrpYh6PbV5Jq7shrc3HQxAN+kkxXggb4N+sloaHB1B+jvj
	3vXlwEDALb0UQdHW+Fbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Amq-000421-PB; Mon, 26 Aug 2019 08:55:40 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Ami-00041e-EX
 for lede-dev@lists.infradead.org; Mon, 26 Aug 2019 08:55:33 +0000
Received: by mail-wr1-x443.google.com with SMTP id p17so14480794wrf.11
 for <lede-dev@lists.infradead.org>; Mon, 26 Aug 2019 01:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:subject:from:to:mime-version
 :content-transfer-encoding;
 bh=kFzCmNajfRS5vOTDhWacSVVh/FLD2amKBjcM9FZPCA4=;
 b=N3iRwXszb00M+gqGyQnWtLKCAmurCXgrMNqrmIq0N1UcGBuxRO2PG2tjUxRNPXaSrQ
 odIV4OGFR4AAaiMe3oyClyqm7R4BQHy2FXt9zKRHdOdJsThRaos+4VAQqu0yTxqCe90O
 ulLDrCTmdsb8SB3Lq26X5LUL/d6kuQx5yYrunzKgOi2U4x42TPLH+cV78xj5KPyQkw71
 XAYsqjbyJQ9dZjn6qc3KJKaC5BJD4TFpmQNDVK/Rv+ylH8CHeh9OsAYv3b5pnLTkH+O/
 JdQ/0U9oSXoHzib+vJT4LPSI1CQrC85Dc0VhFEcRTfhWmXwtVntXhZPbMFZXqmA+n6Ny
 k1KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:subject:from:to:mime-version
 :content-transfer-encoding;
 bh=kFzCmNajfRS5vOTDhWacSVVh/FLD2amKBjcM9FZPCA4=;
 b=gdo+1aFFSd47XzhFmTySbp5zeYjma/+2kE0YJjCtVOI4xy0TjJmBDPPJOa48ZqpjW7
 h+XCjP5R/wDkJ0jQwwxHqzsk670hW0+khP2iZC63ilRgQbgygDEmSCXo49dFjWzZOwN4
 Krsa8MyE+ksgDSlCx3+G4YmXNGFsrTynWL1vAuSKBOmU4A47fy5f2cHFW+TJbEa5UCCv
 SuPNCEtbLdHXdsjpEltYqQlbC8jueCWDPhAFVqHKenRdpyJ7czZz9X8KABAeyRAXE7OY
 ou5qJaDV3k+k87AYxONpuvUYauQrTMIO1OiCOxU8mGHlVxYIbghgv4R5FhkmxBsMVDV9
 Y9Xg==
X-Gm-Message-State: APjAAAUQnNgVBdfH3+wbX7OnWHrP70wU44EgqwfDN37wtz4FS9ygzr0C
 Ayem35t6sqbCICCJcCYORIZjMa9E
X-Google-Smtp-Source: APXvYqx9aerlOLTMBUx3UFMCc+eBv+999nweN9Pzqpn1cnziVhkKD86TYDSKOt5bTuGQ9Dju/DweEA==
X-Received: by 2002:adf:fc51:: with SMTP id e17mr20943244wrs.348.1566809729824; 
 Mon, 26 Aug 2019 01:55:29 -0700 (PDT)
Received: from [127.0.0.1] (213162073147.public.t-mobile.at. [213.162.73.147])
 by smtp.gmail.com with ESMTPSA id
 24sm10748946wmf.10.2019.08.26.01.55.28
 for <lede-dev@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Aug 2019 01:55:29 -0700 (PDT)
Message-ID: <fcce385cb98d44e408c3dd274ff52e7e@swift.generated>
Date: Mon, 26 Aug 2019 10:55:22 +0200
From: Milena Bailey <milenabailey5@gmail.com>
To: "" <openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_015532_515921_FE0609E7 
X-CRM114-Status: UNSURE (   2.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (milenabailey5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (milenabailey5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.7 DEAR_SOMETHING         BODY: Contains 'Dear (something)'
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
Subject: Re: [OpenWrt-Devel] Info about witi.eu
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

Dear Sir/Madam,

I think that the domainname witi.eu would be of interest to you.
Is this interesting for you?

If you require any further information, feel free to contact me.

Milena Bailey

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
